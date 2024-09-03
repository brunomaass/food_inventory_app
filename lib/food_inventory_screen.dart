import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FoodInventoryScreen extends StatefulWidget {

  @override
  _FoodInventoryScreenState createState() => _FoodInventoryScreenState();
}


class _FoodInventoryScreenState extends State<FoodInventoryScreen> {
  final TextEditingController  _foodController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  
 
  @override
  Widget build(BuildContext context) {
    void _addFood() {
    String foodName = _foodController.text;
    int quantity = int.parse(_quantityController.text);

    FirebaseFirestore.instance.collection('foods').add({
      'name': foodName,
      'quantity': quantity,
    });

    _foodController.clear();
    _quantityController.clear();
    }

    void _deleteFood(String id){
      FirebaseFirestore.instance.collection('foods').doc(id).delete();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Inventory"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _foodController,
              decoration: InputDecoration(labelText: 'Food Name'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              controller: _quantityController,
              decoration: InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: _addFood, 
              child: Text('Add Food'),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection('foods').snapshots(), 
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var foodItem = snapshot.data!.docs[index];
                        return ListTile(
                          title: Text(foodItem['name']),
                          subtitle: Text('Quantity: ${foodItem['quantity']}'),
                          trailing: IconButton(
                          onPressed:  () => _deleteFood(foodItem.id),
                          icon: Icon(Icons.delete),
                          ),
                        );
                      }
                      );
                  }
                  )
                )
          ],
        ), 
        ),
    );
  }
}

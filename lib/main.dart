import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_inventory_app/firebase_options.dart';
import 'package:food_inventory_app/food_inventory_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodInventoryScreen(),
    );
  }
}
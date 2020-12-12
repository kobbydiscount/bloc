import 'package:flutter/material.dart';
import 'package:learning_bloc/models/counter_model.dart';
import 'package:provider/provider.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LEARNING PROVIDER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (context) => CounterModel(),
        child: HomeScreen(),
      ),
    );
  }
}

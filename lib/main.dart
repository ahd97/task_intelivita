import 'package:flutter/material.dart';
import 'package:prectical_test_intelivita/providers/category_provider.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      child: MaterialApp(
        title: 'Category List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

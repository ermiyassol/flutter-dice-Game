import 'package:flutter/material.dart';
import 'package:training/colorful_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Dice Roller",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 101, 184),
          ),
          body: ColorfulContainer(),
        ));
  }
}

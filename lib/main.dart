import 'package:flutter/material.dart';
import 'topbar.dart';
import 'custom_navigation_bar.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: ListView(
    //     children: [
    //       topbar(),
    //       MyApp()
    //     ],
    //   )
    // );
    return Scaffold(
      body: ListView(
        children: [
          
          topbar(),
          const SizedBox(height: 14),
          CustomTabBar(),
           
        ],
      ) 
    );
  }
}
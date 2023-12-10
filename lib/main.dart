import 'dart:ffi';

import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageBanner("assets/images/woman.png", 110, 110, 38)
      );
  }
}

class ImageBanner extends StatelessWidget {
  final String assetPath;
  final double width;
  final double height;
  final double borderRadius;

  ImageBanner(this.assetPath, this.width, this.height, this.borderRadius);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
          image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
          ),
          shadows: [
              BoxShadow(
                  color: Color(0x7A1D1D25),
                  blurRadius: 24,
                  offset: Offset(0, 16),
                  spreadRadius: -16,
              )
          ],
      ),
    );
  }
}


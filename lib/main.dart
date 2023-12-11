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
      body: ListView(
        children: [
          const SizedBox(height: 44),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Image.asset("assets/images/cross.png")),
                  IconButton(onPressed: (){}, icon: Image.asset("assets/images/exit.png"))
                ]),
              Positioned(
                top: 14,
                child: ImageBanner("assets/images/woman.png", 110, 110, 38) 
              ),
              const Positioned(
                top: 157,
                child: Text(
                  "Екатерина",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  ),
                )
              )
            ]
          ),
          const SizedBox(height: 14)
        ]
      )
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


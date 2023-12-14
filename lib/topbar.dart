import 'package:flutter/material.dart';

Widget topbar(){
  return Stack(
    children: [
      Positioned(
        top: 53,
        left: 14,
        height: 24,
        width: 24,
        child: Image.asset("assets/images/cross.png")
      ),
      Positioned(
        top: 53,
        right: 14,
        height: 24,
        width: 24,
        child: Image.asset("assets/images/exit.png")
      ),
      Center(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 58, bottom: 36),
            child: Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/woman.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Text(
            "Екатерина",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
            ),
          ),
        ])
      )
    ]
  );
}
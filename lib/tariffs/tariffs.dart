import 'package:flutter/material.dart';

Widget tariffs(BuildContext context) {
  return const Padding(
        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Тарифы и лимиты',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.7,
                )),
            SizedBox(height: 8),
            Text('Для операций в Сбербанк Онлайн',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x8C000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.42,
                )),
          ],
        ));
}
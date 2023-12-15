import 'package:flutter/material.dart';

import '../interests/interest_chip.dart';

Widget interests(BuildContext context) {
  return ListView(shrinkWrap: true, children: [
    const Padding(
        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Интересы',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.7,
                )),
            SizedBox(height: 8),
            Text(
                'Мы подбираем истории и предложения по темам, которые вам нравятся',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x8C000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.42,
                )),
          ],
        )),
    Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        children: [
          ships([
            'Еда',
            'Саморазвитие',
            'Технологии',
            'Дом',
            'Досуг',
            'Забота о себе',
            'Наука'
          ])
        ],
      ),
    ),
  ]);
}

Widget ships(List<String> labels) {
  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: List.generate(
      labels.length,
      (index) {
        return customChip(labels[index]);
      },
    ).toList(),
  );
}
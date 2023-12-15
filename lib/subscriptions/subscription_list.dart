import 'package:flutter/material.dart';
import 'subscription_card.dart';

Widget subscriptionList(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 16, top: 20, bottom: 30, right: 16),
    child: Row(children: [
      subscriptionCard(context, 'assets/images/sber_logo.png', 'СберПрайм',
          'Платёж 9 июля', '199 ₽ в месяц'),
      const SizedBox(width: 8),
      subscriptionCard(context, 'assets/images/percent.png', 'Переводы',
          'Автопродление 21 августа', '199 ₽ в месяц'),
    ]),
  );
}
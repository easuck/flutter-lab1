import 'package:flutter/cupertino.dart';
import 'subscription_list.dart';

Widget subscriptions(BuildContext context) {
    return Column( children: [
    const Padding(
        padding: EdgeInsets.only(left: 16, top: 30, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('У вас подключено',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  //fontFamily: "SF Pro Display",
                  letterSpacing: -0.7,
                )),
            SizedBox(height: 8),
            Text('Подписки, автоплатежи и сервисы на которые вы подписались',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x8C000000),
                  fontWeight: FontWeight.w500,
                  //fontFamily: "SF Pro Display",
                  letterSpacing: -0.42,
                )),
          ],
        )),
    subscriptionList(context),
  ]);
}
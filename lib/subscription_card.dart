import 'package:flutter/material.dart';

Widget subscriptionCard(BuildContext context, String imageAsset, String title,
    String paymentInformation, String paymentAmount) {
  return SizedBox(
    width: 216,
    height: 130,
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 8),
            blurRadius: 14,
            spreadRadius: 0,
            color: Color.fromRGBO(79, 79, 108, 0.07),
          ),
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.08),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageAsset),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF Pro Display",
                      letterSpacing: -0.4,
                    )),
              ],
            ),
            const Spacer(),
            Text(paymentInformation,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.4,
                )),
            Text(paymentAmount,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0x8C000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.4,
                )),
          ],
        ),
      ),
    ),
  );
}
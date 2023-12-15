import 'package:flutter/material.dart';

Widget customChip(String label) {
  return Chip(
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w500,
          height: 0.09,
          letterSpacing: -0.41,
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: const BorderSide(color: Colors.transparent),
      ));
}
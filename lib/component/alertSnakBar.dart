import 'package:flutter/material.dart';
import 'package:rafiky/component/style.dart';

SnackBar alertSnackBar(BuildContext context,String message) {
  ScaffoldMessenger.of(context).clearSnackBars();
  return SnackBar(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
      backgroundColor: colorStyle.goldColor,
      content: Text(
        message,
        style: TextStyle(fontSize: 17,color: colorStyle.primaryColor),
      ));
}
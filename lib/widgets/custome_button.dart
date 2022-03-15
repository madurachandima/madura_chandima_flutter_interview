import 'package:flutter/material.dart';

class Customebutton extends StatelessWidget {
  final Function()? callbackFunction;
  final Widget? buttontText;
  final Color? backgroundColor;
  const Customebutton(
      {Key? key,
      required this.callbackFunction,
      required this.buttontText,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              primary: (backgroundColor)),
          onPressed: callbackFunction,
          child: buttontText!),
    );
  }
}

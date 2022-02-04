import 'package:flutter/material.dart';
import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    required this.Width,
    this.color = kPrimaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;
  final int Width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: Width.toDouble(),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

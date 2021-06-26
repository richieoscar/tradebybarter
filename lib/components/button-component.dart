import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {

  final String label;
  final Color textColor;
  final Color bgColor;
  final double height;
  final double width;
  final double borderRadius;
  final Function function;

  const ButtonComponent({
    Key key,
    this.textColor,
    this.height,
    this.width,
    this.borderRadius,
    this.bgColor,
    this.label,
    this.function
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: new ElevatedButton(
        style: ButtonStyle(
          // backgroundColor: bgColor,
        ),
          onPressed: null,
          child: Text(
            label,
            style: TextStyle(
              color: textColor
            ),
          ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  String? text;
  String? fontFamily;
  Color? color;
  Color? textColor;
  double? width;
  double? height;
  double? borderRadius;
  double? fontSize;
  GestureTapCallback? onTap;

  CommonButton(
      {this.text,
      this.color,
      this.width,
      this.height,
      this.borderRadius,
      this.textColor,
      this.fontSize,
      this.onTap,
      this.fontFamily,
      Key? key})
      : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: widget.height ?? 50,
          width: widget.width ?? double.infinity,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(widget.borderRadius ?? 13)),
              color: widget.color ?? Colors.blue.shade50),
          child: Center(
              child: Text(
            widget.text!,
            style: TextStyle(
                fontFamily: widget.fontFamily,
                color: widget.textColor ?? Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: widget.fontSize ?? 20),
            textAlign: TextAlign.center,
          )),
        ),
      ),
    );
  }
}

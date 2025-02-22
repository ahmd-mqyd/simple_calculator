import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String? text;
  final int? fillColor;
  final int textColor;
  final double textSize;
  final Function? callback;

  const CalcButton({
    Key? key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: fillColor != null ? Color(fillColor!) : null,
          ),

          onPressed: () {
            callback!(text);
          },
          child: Text(
            text!,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
                color: Color(textColor),
              ),
            ),
          ),
          // color: fillColor != null ? Color(fillColor) : null,
        ),
      ),
    );
  }
}

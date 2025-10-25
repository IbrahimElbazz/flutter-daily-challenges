import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.minus, size: 30, color: Color(0xff7c7c7c)),
        ),
        Container(
          width: 50,
          height: 50,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Center(
            child: Text(
              '1',
              style: GoogleFonts.cairo(
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.plus, size: 30, color: Color(0xff53B175)),
        ),
      ],
    );
  }
}

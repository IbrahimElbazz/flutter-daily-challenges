import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';

class ExpandedTileWidget extends StatelessWidget {
  const ExpandedTileWidget({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ExpandedTile(
      theme: const ExpandedTileThemeData(
        headerColor: Colors.transparent,
        headerPadding: EdgeInsets.all(10.0),
        contentBackgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.all(10.0),
      ),
      controller: ExpandedTileController(),
      title: Text(
        title,
        style: GoogleFonts.cairo(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      content: Container(
        color: Colors.transparent,
        child: Text(
          content,
          style: GoogleFonts.cairo(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(0xff7c7c7c),
          ),
        ),
      ),
    );
  }
}

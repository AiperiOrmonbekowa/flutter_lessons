// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.besley(fontWeight: FontWeight.w800),
    );
  }
}

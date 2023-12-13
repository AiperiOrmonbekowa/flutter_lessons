import 'package:flutter/material.dart';
import 'package:game_test/models/models.dart';
import 'package:game_test/view/home_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ContinentsCard extends StatelessWidget {
  const ContinentsCard({
    super.key,
    required this.continent,
  });

  final Continents continent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Homedetail()),
      ),
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Text(
              continent.text,
              style:
                  GoogleFonts.besley(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Expanded(
              child: SvgPicture.asset(
                continent.icon,
                // ignore: deprecated_member_use
                color: continent.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

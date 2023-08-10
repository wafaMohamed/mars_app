import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/constant/app_theme/app_theme.dart';

class PlanetProperty extends StatelessWidget {
  final String label;
  final double value;

  const PlanetProperty({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 120,
        width: 90,
        decoration: BoxDecoration(
            border: Border.all(width: 0.2, color: AppTheme.white),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                label,
                style: GoogleFonts.oxygen(
                  color: AppTheme.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                value.toString(),
                style: GoogleFonts.oxygen(
                  color: AppTheme.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

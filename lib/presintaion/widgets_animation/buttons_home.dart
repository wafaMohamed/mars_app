import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/constant/app_theme/app_theme.dart';

class ButtonsHomScreen extends StatelessWidget {
  const ButtonsHomScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TweenAnimationBuilder(
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeInOut,
              tween: Tween<double>(begin: 0.0, end: 1.0),
              builder: (context, double value, _) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - value)),
                    child: Container(
                      width: 225,
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: AppTheme.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11.0),
                        child: Text(
                          "More info",
                          style: GoogleFonts.oxygen(
                              color: AppTheme.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              }),
          TweenAnimationBuilder(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOutCirc,
              tween: Tween<double>(begin: 0.0, end: 1.0),
              builder: (context, double value, _) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 40 * (1 - value)),
                    child: Container(
                      width: 225,
                      margin: const EdgeInsets.only(bottom: 50),
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color:AppTheme.white),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11.0),
                        child: Text(
                          "Buy tickets",
                          style: GoogleFonts.oxygen(
                              color: AppTheme.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

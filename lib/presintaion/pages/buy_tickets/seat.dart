import 'dart:math';

import 'package:flutter/material.dart';

import '../../../constant/app_theme/app_theme.dart';

class Seat extends StatefulWidget {
  final int index;
  final Function(bool) updateTotalSeats;
  const Seat({Key? key, required this.index, required this.updateTotalSeats})
      : super(key: key);

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  Color color = AppTheme.white;
  bool isOccupied = false;
  bool isChosen = false;

  @override
  void initState() {
    isOccupied = Random().nextBool();
    if (isOccupied && widget.index < 10) {
      color = const Color(0xff2d2c2d);
    } else {
      isOccupied = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isOccupied) {
          setState(() {
            isChosen = !isChosen;
            widget.updateTotalSeats(isChosen);
          });
        }
      },
      child: Icon(
        Icons.chair,
        color: isChosen ?  AppTheme.orange : color,
        size: 32,
      ),
    );
  }
}

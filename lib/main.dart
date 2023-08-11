import 'package:flutter/material.dart';
import 'package:space_app/presintaion/pages/more_info/home_page.dart';

void main() {
  runApp(const MarsApp());
}

class MarsApp extends StatelessWidget {
  const MarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mars',
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );

  }}

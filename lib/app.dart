import 'package:flutter/material.dart';
import 'package:qr_code_generator/page/home.dart';
class QrCodeGenerator extends StatelessWidget {
  const QrCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:  Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_generator/page/home.dart';
import 'package:qr_code_generator/provider/app_provider.dart';
class QrCodeGenerator extends StatelessWidget {
  const QrCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:  ChangeNotifierProvider(  create: (_) => AppProvider(text: ''),child: Home(),),
    );
  }
}

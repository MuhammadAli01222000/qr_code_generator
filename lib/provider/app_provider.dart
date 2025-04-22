import 'package:flutter/cupertino.dart';
class AppProvider extends ChangeNotifier {
  String text;

  AppProvider({required this.text});

  void updateText(String newText) {
    text = newText;
    notifyListeners();
  }
}

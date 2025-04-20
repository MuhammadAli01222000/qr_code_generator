import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../core/theme/colors.dart';
import '../core/theme/icon.dart';
import '../core/theme/strings.dart';
import '../core/widgets/button.dart';
import '../core/widgets/list_tile.dart';
import '../core/widgets/text_style.dart';
import 'center_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controller = TextEditingController();
  String _qrData = "";

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Row(
        children: [
          /// CHAP
          SizedBox(
            width: screenWidth * 0.25,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 12.0),
                  child: Text(
                    AppStrings.flowcode,
                    style: AppTextStyle.leftText,
                  ),
                ),
                Divider(color: AppColors.grey),
                Expanded(
                  child: ListView.builder(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      final item = menuItems[index];
                      return Container(
                        constraints: BoxConstraints(maxWidth: 250),
                        child: ListTile(
                          leading: item.icon,
                          title: Text(item.title),
                          selected: selectedIndex == index,
                          selectedColor: AppColors.blue3,
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                AppDimens.h20,
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: AppDimens.d50,minHeight: AppDimens.d50,
                    maxWidth: AppDimens.d300,
                    minWidth: AppDimens.d50
                  ),

                  child: Card(
                    color: AppColors.grey400,
                    child: Center(
                      child: ListTile(
                        leading: AppIcons.play,
                        title: Text(
                          AppStrings.watch,
                          style: TextStyle(color: AppColors.deepPurple),
                        ),
                      ),
                    ),
                  ),
                ),
                AppDimens.h20
              ],
            ),
          ),

          /// CENTER PANEL
          CenterPage(screenWidth: screenWidth),

          /// O‘NG PANEL
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "Matn yoki URL kiriting",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _qrData = _controller.text.trim();
                      });
                    },
                    child: const Text("QR Code yaratish"),
                  ),
                  const SizedBox(height: 20),
                  if (_qrData.isNotEmpty)
                    Center(
                      child: QrImageView(
                        data: _qrData,
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                    ),
                  const Spacer(),
                  Center(
                    child: Button(
                      width: AppDimens.d300,
                      height: AppDimens.d50,
                      text: "Salom",
                      color: AppColors.blue2,
                      onTap: () {},
                      textColor: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

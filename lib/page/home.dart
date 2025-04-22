
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_generator/core/theme/dimens.dart';
import 'package:qr_code_generator/page/network_qr_code.dart';
import '../core/theme/colors.dart';
import '../core/theme/icon.dart';
import '../core/widgets/input.dart';
import '../core/theme/strings.dart';
import '../core/widgets/button.dart';
import '../core/widgets/drop_down_menu.dart';
import '../core/widgets/list_tile.dart';
import '../core/widgets/select.dart';
import '../core/widgets/text_style.dart';
import '../provider/app_provider.dart';
import 'center_page.dart';
const pdp="assets/telegram-peer-photo-size-2-5256190993164785864-1-0-0.jpg";
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
    final ScrollController scrollController = ScrollController();
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: constraints.maxHeight,
              child: Row(
                children: [
                  /// CHAP
                  SizedBox(
                    width: screenWidth * 0.25,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            bottom: 12.0,
                          ),
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
                            maxHeight: AppDimens.d50,
                            minHeight: AppDimens.d50,
                            maxWidth: AppDimens.d300,
                            minWidth: AppDimens.d50,
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
                        AppDimens.h20,
                      ],
                    ),
                  ),

                  /// CENTER PANEL
                  CenterPage(screenWidth: screenWidth),

                  /// O‘NG PANEL
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: screenWidth / 1,
                        color: AppColors.backroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (_qrData.isNotEmpty)
                                Container(
                                  width: screenWidth/8,height: screenWidth/8,
                                    child: Card(
                                      child: AssetQrGenerator(qrData: "https://github.com/MuhammadAli01222000/provider", imgUrl: pdp),
                                      // child: QrImageView(
                                      //   embeddedImageStyle:
                                      //       QrEmbeddedImageStyle(
                                      //         size: Size(100, 150),
                                      //       ),
                                      //
                                      //   dataModuleStyle: QrDataModuleStyle(
                                      //     color: AppColors.white,
                                      //   ),
                                      //   backgroundColor:
                                      //       AppColors.backroundColor,
                                      //   eyeStyle: QrEyeStyle(
                                      //     color: AppColors.white,
                                      //     eyeShape: QrEyeShape.square,
                                      //   ),
                                      //   data: _qrData,
                                      //   version: QrVersions.auto,
                                      //   size: 100.0,
                                      // ),
                                    ),

                                ),
                              AppDimens.h20,
                              ///pattern
                              Pattern(screenWidth: screenWidth),
                              AppDimens.h20,

                              /// color
                              ColorWidget(screenWidth: screenWidth),
                              AppDimens.h20,

                              ///Logo
                              LogoWidget(screenWidth: screenWidth),

                            Expanded(child: const   SelectFormat()),
                              Expanded(child: Input(controller: _controller)),
                              const SizedBox(height: 20),
                              AppDimens.h20,

                              const Spacer(),
                              Expanded(
                                child: SizedBox(
                                 width: screenWidth-10,
                                  child: Consumer<AppProvider>(
                                    child: Text(""),
                                    builder:(_,AppProvider,_){
                                      return  RightButton(
                                        onPressed: () {
                                          setState(() {
                                            _qrData = _controller.text.trim();
                                          });
                                        },
                                        width: screenWidth / 3,
                                      );
                                    } ,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


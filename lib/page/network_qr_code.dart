import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AssetQrGenerator extends StatelessWidget {
  final String qrData;
  final String imgUrl;

  const AssetQrGenerator({
    super.key,
    required this.qrData,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: qrData,
      version: QrVersions.auto,
      size: 200.0,
      embeddedImage: AssetImage(imgUrl),
      embeddedImageStyle: const QrEmbeddedImageStyle(
        size: Size(40, 40),
      ),
    );
  }
}

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
      eyeStyle: QrEyeStyle(
        eyeShape: QrEyeShape.circle,
        color: Colors.red
      ),
      data: qrData,
      version: QrVersions.auto,
      size: 200.0,
      embeddedImage: AssetImage(imgUrl),
      embeddedImageStyle: QrEmbeddedImageStyle(
        size: Size(40, 40),
      ),
    );
  }
}

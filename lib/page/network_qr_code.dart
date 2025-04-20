import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class NetworkQrGenerator extends StatelessWidget {
  final String networkImgUrl;
  const NetworkQrGenerator({
    super.key,
    required String qrData, required this.networkImgUrl,
  }) : _qrData = qrData;

  final String _qrData;

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: networkImgUrl,
      version: QrVersions.auto,
      size: 200.0,
      embeddedImage: NetworkImage(networkImgUrl),
      embeddedImageStyle: QrEmbeddedImageStyle(
        size: Size(40, 40),
      ),
    );
  }
}

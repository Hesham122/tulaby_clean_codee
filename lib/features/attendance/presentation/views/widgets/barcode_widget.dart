 import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeWidget extends StatefulWidget {
  const BarcodeWidget({super.key});

  @override
  State<BarcodeWidget> createState() => _BarcodeWidgetState();
}

class _BarcodeWidgetState extends State<BarcodeWidget> {
  final MobileScannerController cameraController =
      MobileScannerController(detectionSpeed: DetectionSpeed.normal);

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: MobileScanner(
        controller: cameraController,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          // final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            print("hesham this barcode ${barcode.rawValue}");
          }
          cameraController.stop();
          Navigator.pop(context);
        },
      ),
    );
  }
}

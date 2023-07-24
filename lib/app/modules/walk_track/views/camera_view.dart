import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import '../controllers/camera_classifier.dart';
import '../views/camera_view.dart';

class CameraView extends StatelessWidget {
  final File? file;
  CameraView({
    Key? key,
    required this.file,
  });
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return Container(
      width: 250,
      height: 250,
      color: Colors.white,
      child: (file == null)
          ? _buildEmptyView()
          : Image.file(file!, fit: BoxFit.cover),
    );
  }

  Widget _buildEmptyView() {
    return const Center(
        child: Text(
      'Please pick a photo',
      style: TextStyle(
          fontSize: 18,
          color: Color(0xffFFCDD2),
          backgroundColor: Color(0xffFF5E5E),
          decoration: TextDecoration.none),
    ));
  }
}

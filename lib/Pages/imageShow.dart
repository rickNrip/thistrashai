import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageData extends StatefulWidget {
  const ImageData({super.key});

  @override
  State<ImageData> createState() => _ImageDataState();
}

class _ImageDataState extends State<ImageData> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Text('hello card')],
      ),
    );
  }
}

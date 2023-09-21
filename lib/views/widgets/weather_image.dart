import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({super.key, required this.fileName});
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: SvgPicture.asset('images/$fileName.svg'),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
    required this.currentIndex,
    required this.path,
    this.color,
  });

  final int currentIndex;
  final Color? color;
  final String path;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tablet/components/open/menu/views/open_menu.dart';
import 'package:tablet/components/open/swiper/views/open_swiper.dart';

class OpenIndex extends StatelessWidget {
  const OpenIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: double.infinity,
          child: AspectRatio(
            aspectRatio: 1160 / 1104,
            child: OpenSwiper(),
          ),
        ),
        Expanded(child: OpenMenu()),
      ],
    );
  }
}

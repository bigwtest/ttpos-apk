// Package imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:pos/components/sub_screen/components/carousel/carousel.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({super.key});

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(),
    );
  }
}

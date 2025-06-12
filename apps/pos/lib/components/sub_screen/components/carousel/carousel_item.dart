import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/carousel/carousel_item.dart';
import 'package:video_player/video_player.dart';

class SwiperItem extends StatefulWidget {
  const SwiperItem({
    super.key,
    required this.item,
    required this.onNextPage,
    required this.isSingle,
  });

  final ResponseCarouselItem item;
  final VoidCallback onNextPage;
  final bool isSingle;

  @override
  State<SwiperItem> createState() => _SwiperItemState();
}

class _SwiperItemState extends State<SwiperItem> {
  VideoPlayerController? _videoController;
  bool _isVideoInitialized = false;
  String? _errorMessage;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();

    debugPrint('SwiperItem initState ${widget.item.filePath}');
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;

    _isVideoInitialized = false;
    _videoController?.dispose();
    _videoController = null;

    debugPrint('SwiperItem dispose ${widget.item.filePath}');
    super.dispose();
  }

  void _startTimer() async {
    try {
      if (widget.item.type == 'video') {
        _videoController = VideoPlayerController.networkUrl(
          Uri.parse(widget.item.filePath),
        );

        if (!mounted) return;

        await _videoController?.initialize();

        setState(() {
          _isVideoInitialized = true;
          _errorMessage = null;
          _videoController?.play();

          if (widget.isSingle) {
            _videoController?.setLooping(true);
          }

          _timer = Timer(
            Duration(seconds: (_videoController?.value.duration.inSeconds ?? 0) + 1),
            () {
              if (mounted) {
                widget.onNextPage();
              }
            },
          );
        });

        return;
      }

      setState(() {
        _timer = Timer(const Duration(seconds: 5), () {
          if (mounted) {
            widget.onNextPage();
          }
        });
      });
    } catch (error, stackTrace) {
      debugPrint('SwiperItem _startTimer error: $error');
      debugPrintStack(stackTrace: stackTrace);

      setState(() {
        _errorMessage = '视频加载失败，3秒后自动切换'.tr;
        _isVideoInitialized = false;
      });

      // 视频加载失败后，3秒后自动切换到下一页
      _timer = Timer(const Duration(seconds: 3), () {
        if (mounted) {
          widget.onNextPage();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.item.type == 'video'
        ? (_isVideoInitialized
            ? VideoPlayer(_videoController!)
            : _errorMessage != null
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 48.0,
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          _errorMessage!,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ))
        : Image.network(
            widget.item.filePath,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 48.0,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      '图片加载失败，3秒后自动切换'.tr,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
  }
}

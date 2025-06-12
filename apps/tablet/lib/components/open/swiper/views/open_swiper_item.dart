import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/model/response/auth/models/tablet.dart';
import 'package:video_player/video_player.dart';

class OpenSwiperItem extends StatefulWidget {
  const OpenSwiperItem({
    super.key,
    required this.item,
    this.onNextPage,
    this.isSingle = false,
  });

  final Carousel item;
  final VoidCallback? onNextPage;
  final bool isSingle;

  @override
  State<OpenSwiperItem> createState() => _OpenSwiperItemState();
}

class _OpenSwiperItemState extends State<OpenSwiperItem> {
  VideoPlayerController? _videoController;
  bool _isVideoInitialized = false;
  String? _errorMessage;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    _isVideoInitialized = false;
    _videoController?.dispose();
    _videoController = null;
    debugPrint('OpenSwiperItem dispose');
    super.dispose();
  }

  void _startTimer() async {
    try {
      if (widget.item.type == 'video') {
        _videoController = VideoPlayerController.networkUrl(
          Uri.parse(widget.item.filePath),
        );

        await _videoController?.initialize();

        if (!mounted) return;

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
                widget.onNextPage?.call();
              }
            },
          );
        });

        return;
      }

      setState(() {
        _timer = Timer(const Duration(seconds: 10), () {
          if (mounted) {
            widget.onNextPage?.call();
          }
        });
      });
    } catch (error, stackTrace) {
      debugPrint('OpenSwiperItem _startTimer error: $error\n$stackTrace');
      if (!mounted) return;

      setState(() {
        _errorMessage = '视频加载失败，3秒后自动切换'.tr;
        _isVideoInitialized = false;
      });

      // 视频加载失败后，3秒后自动切换到下一页
      _timer = Timer(const Duration(seconds: 3), () {
        if (mounted) {
          widget.onNextPage?.call();
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

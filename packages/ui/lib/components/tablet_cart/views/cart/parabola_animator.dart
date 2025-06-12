import 'package:flutter/material.dart';
import 'package:ttpos_ui/theme/theme.dart';

class ParabolaAnimator {
  /// 执行抛物线动画
  static void run({
    required BuildContext context,
    Widget? child, // 要动画的组件（如商品图片）
    Offset? startPos, // 开始位置
    required GlobalKey endKey, // 终点位置的组件Key
    Duration duration = const Duration(milliseconds: 500),
    Curve curve = Curves.easeInOut,
    VoidCallback? onComplete, // 动画完成回调
  }) {
    // 计算起始位置
    // final startBox = startKey.currentContext?.findRenderObject() as RenderBox?;
    final endBox = endKey.currentContext?.findRenderObject() as RenderBox?;
    if (startPos == null || endBox == null) return;

    // final startPos = startBox.localToGlobal(startBox.size.center(Offset.zero));
    final endPos = endBox.localToGlobal(Offset.zero);

    // 创建Overlay
    late final OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => _ParabolaAnimation(
        startPos: startPos,
        endPos: endPos,
        duration: duration,
        curve: curve,
        onComplete: () {
          overlayEntry.remove();
          onComplete?.call();
        },
        child: child ??
            Container(
              width: 14.0,
              height: 14.0,
              decoration: BoxDecoration(
                color: CustomTheme.errorColor,
                shape: BoxShape.circle, // 设置形状为圆形
              ),
            ),
      ),
    );

    // 插入Overlay
    Overlay.of(context).insert(overlayEntry);
  }
}

class _ParabolaAnimation extends StatefulWidget {
  final Offset startPos;
  final Offset endPos;
  final Widget child;
  final Duration duration;
  final Curve curve;
  final VoidCallback onComplete;

  const _ParabolaAnimation({
    required this.startPos,
    required this.endPos,
    required this.child,
    required this.duration,
    required this.curve,
    required this.onComplete,
  });

  @override
  __ParabolaAnimationState createState() => __ParabolaAnimationState();
}

class __ParabolaAnimationState extends State<_ParabolaAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _xAnimation;
  late Animation<double> _yAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  bool _visible = false; // 新增可见性控制

  @override
  void initState() {
    super.initState();

    // 初始化动画控制器
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.onComplete();
        }
      });

    // 延迟显示组件，避免闪烁
    Future.microtask(() {
      if (mounted) {
        setState(() {
          _visible = true;
        });
      }
    });

    // X轴：线性移动
    _xAnimation = Tween<double>(
      begin: widget.startPos.dx,
      end: widget.endPos.dx,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    );

    // Y轴：抛物线运动（使用数学公式计算）
    _yAnimation = Tween<double>(begin: 0, end: 1)
        .animate(
          CurvedAnimation(parent: _controller, curve: widget.curve),
        )
        .drive(
          _ParabolaTween(
            startY: widget.startPos.dy,
            endY: widget.endPos.dy,
            peakHeight: 50, // 降低抛物线顶点高度
          ),
        );

    // 缩放动画
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.8), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 0.8, end: 0.5), weight: 50),
    ]).animate(_controller);

    // 透明度动画
    _opacityAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Visibility(
          visible: _visible, // 控制可见性
          child: Positioned(
            left: _xAnimation.value,
            top: _yAnimation.value,
            child: Opacity(
              opacity: _opacityAnimation.value,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: widget.child,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// 自定义抛物线补间动画
class _ParabolaTween extends Tween<double> {
  final double startY;
  final double endY;
  final double peakHeight;

  _ParabolaTween({
    required this.startY,
    required this.endY,
    this.peakHeight = 100,
  }) : super(begin: 0, end: 1);

  @override
  double lerp(double t) {
    // 动态计算抛物线高度，基于起始点和终点的距离
    final distance = (endY - startY).abs();
    final dynamicHeight = peakHeight * (distance / 100);

    // 抛物线公式：y = a*t^2 + b*t + c
    final y = startY - dynamicHeight * (4 * t * (1 - t)) + (endY - startY) * t;
    return y;
  }
}

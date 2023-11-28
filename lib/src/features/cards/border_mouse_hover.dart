import 'package:code_with_andrea_flutter/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BorderMouseHover extends StatefulWidget {
  const BorderMouseHover({super.key, required this.builder});
  final Widget Function(BuildContext, double) builder;

  @override
  State<BorderMouseHover> createState() => _BorderMouseHoverState();
}

class _BorderMouseHoverState extends State<BorderMouseHover>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 150),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (details) => _controller.forward(),
      onExit: (details) => _controller.reverse(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.transparent, // AppColors.neutral5,
                border: Border.all(
                  color: AppColors.primary.withOpacity(_controller.value),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.neutral6,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: widget.builder(context, _controller.value),
              ));
        },
      ),
    );
  }
}

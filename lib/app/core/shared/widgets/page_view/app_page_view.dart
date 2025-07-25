import 'package:flutter/material.dart';

class AppCarousel extends StatefulWidget {
  final List<Widget> items; 
  const AppCarousel({super.key, required this.items});

  @override
  State<AppCarousel> createState() => _AppCarouselState();
}

class _AppCarouselState extends State<AppCarousel> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.items.length,
      controller: _controller,
      itemBuilder: (context, index) {
        final isSelected = (_currentPage.round() == index);
        final scale = isSelected ? 0.90 : 0.85;

        return TweenAnimationBuilder<double>(
          tween: Tween(begin: scale, end: scale),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return Transform.scale(scale: value, child: widget.items[index]);
          },
        );
      },
    );
  }
}
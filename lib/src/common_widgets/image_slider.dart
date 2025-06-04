import 'dart:async';
import 'package:bank_farming/src/common_widgets/txt_btn.dart';
import 'package:bank_farming/src/features/intro/domain/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../constant/color_constant.dart';
import '../features/home/domain/category_slide.dart';
import '../routing/route_names.dart';



// class FadeOnlyImageSlider extends StatefulWidget {
//   final List<String> imageUrls;
//   final Duration fadeDuration;
//   final Duration displayDuration;
//
//   const FadeOnlyImageSlider({
//     super.key,
//     required this.imageUrls,
//     this.fadeDuration = const Duration(seconds: 1),
//     this.displayDuration = const Duration(seconds: 3),
//   });
//
//   @override
//   State<FadeOnlyImageSlider> createState() => _FadeOnlyImageSliderState();
// }
//
// class _FadeOnlyImageSliderState extends State<FadeOnlyImageSlider> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   int _currentIndex = 0;
//   int _nextIndex = 1;
//   Timer? _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: widget.fadeDuration,
//     );
//     _startTimer();
//   }
//
//   void _startTimer() {
//     _timer = Timer.periodic(
//       widget.displayDuration + widget.fadeDuration,
//           (_) => _startFadeTransition(),
//     );
//   }
//
//   void _startFadeTransition() {
//     _controller.forward().then((_) {
//       setState(() {
//         _currentIndex = _nextIndex;
//         _nextIndex = (_nextIndex + 1) % widget.imageUrls.length;
//         _controller.reset();
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300, // Adjust as needed
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           // Current visible image
//           Image.asset(
//             widget.imageUrls[_currentIndex],
//             fit: BoxFit.cover,
//             width: double.infinity,
//           ),
//           // Next image that will fade in
//           FadeTransition(
//             opacity: _controller,
//             child: Image.asset(
//               widget.imageUrls[_nextIndex],
//               fit: BoxFit.cover,
//               width: double.infinity,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class ManualFadeImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  final Duration fadeDuration;

  const ManualFadeImageSlider({
    super.key,
    required this.imageUrls,
    this.fadeDuration = const Duration(seconds: 1),
  });

  @override
  State<ManualFadeImageSlider> createState() => _ManualFadeImageSliderState();
}

class _ManualFadeImageSliderState extends State<ManualFadeImageSlider> {
  int _currentIndex = 0;

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % widget.imageUrls.length;
    });
  }

  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % widget.imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300, // Adjust height as needed
          child: AnimatedSwitcher(
            duration: widget.fadeDuration,
            child: Image.asset(
              widget.imageUrls[_currentIndex],
              key: ValueKey<String>(widget.imageUrls[_currentIndex]), // Important for animation
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _previousImage,
              child: const Text('Previous'),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: _nextImage,
              child: const Text('Next'),
            ),
          ],
        ),
      ],
    );
  }
}


class FadingImageListView extends StatefulWidget {
  final List<String> imageUrls;
  const FadingImageListView({super.key, required this.imageUrls});

  @override
  State<FadingImageListView> createState() => _FadingImageListViewState();
}

class _FadingImageListViewState extends State<FadingImageListView> {
  int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  void _nextImage() {
    setState(() {
      if (_currentIndex < widget.imageUrls.length - 1) {
        _currentIndex++;
      }
    });
    _scrollToCurrentIndex();
  }

  void _previousImage() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      }
    });
    _scrollToCurrentIndex();
  }

  void _scrollToCurrentIndex() {
    _scrollController.animateTo(
      _currentIndex * 220.0, // Adjust based on your item height + padding
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image List View
        SizedBox(
          height: 300,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: index == _currentIndex ? 1.0 : 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // Navigation Buttons
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _previousImage,
                child: const Text('Previous'),
              ),
              const SizedBox(width: 20),
              Text(
                '${_currentIndex + 1}/${widget.imageUrls.length}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: _nextImage,
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}



class FadeOnlyImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  final Duration fadeDuration;
  final Duration displayDuration;

  const FadeOnlyImageSlider({
    super.key,
    required this.imageUrls,
    this.fadeDuration = const Duration(seconds: 1),
    this.displayDuration = const Duration(seconds: 3),
  });

  @override
  State<FadeOnlyImageSlider> createState() => _FadeOnlyImageSliderState();
}

class _FadeOnlyImageSliderState extends State<FadeOnlyImageSlider> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _currentIndex = 0;
  int _nextIndex = 1;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.fadeDuration,
    );
    // Removed auto-starting timer
  }

  void _startFadeTransition() {
    if (_controller.isAnimating) return;
    _controller.forward().then((_) {
      setState(() {
        _currentIndex = _nextIndex;
        _nextIndex = (_nextIndex + 1) % widget.imageUrls.length;
        _controller.reset();
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
    return Column(
      children: [
        SizedBox(
          height: 300, // Adjust as needed
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Current visible image
              Image.asset(
                widget.imageUrls[_currentIndex],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              // Next image that will fade in
              FadeTransition(
                opacity: _controller,
                child: Image.asset(
                  widget.imageUrls[_nextIndex],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _startFadeTransition,
          child: const Text('Next Image'),
        ),
      ],
    );
  }
}


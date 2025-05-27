import 'package:bank_farming/src/common_widgets/carousel_image_slider.dart';
import 'package:bank_farming/src/common_widgets/circular_icon_button.dart';
import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:bank_farming/src/features/intro/presentation/intro_view_model.dart';
import 'package:bank_farming/src/utils/async_value_widget.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage extends ConsumerStatefulWidget {
  const IntroPage({super.key});

  @override
  ConsumerState createState() => _IntroPageState();
}

class _IntroPageState extends ConsumerState<IntroPage> {
  int _currentIndex = 0;
  double progress = 0.0;
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    double statusBarHeight = ScreenUtil().statusBarHeight;
    double bottomBarHeight = ScreenUtil().bottomBarHeight;
    final introState = ref.watch(introViewModelProvider);

    return Scaffold(
      body: AsyncValueWidget(
        value: introState,
        data: (slideProvider) {
          final slideListSize = slideProvider.length;
          final isLastSlide = _currentIndex == slideListSize - 1;
          final newProgress = (_currentIndex + 1) / slideListSize;

          return Stack(
            children: [
              CarouselImageSlider(
                slideProvider: slideProvider,
                carouselController: _carouselSliderController,
                isLastSlide: isLastSlide,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                    progress = (_currentIndex + 1) / slideListSize;
                  });
                },
              ),
              IntroBody(
                onForward: () {
                  if (_currentIndex < slideListSize - 1) {
                    _carouselSliderController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                progress: newProgress,
                onSkip: () {
                  _carouselSliderController.animateToPage(
                    slideListSize - 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  setState(() {
                    _currentIndex = slideListSize - 1;
                    progress = 1.0;
                  });
                },
                theLastSlide: isLastSlide,
              ),
            ],
          );
        },
      ),
    );
  }
}

class IntroBody extends StatelessWidget {
  const IntroBody({
    super.key,
    required this.onForward,
    required this.progress,
    required this.onSkip,
    required this.theLastSlide,
  });

  final VoidCallback onForward;
  final double progress;
  final VoidCallback onSkip;
  final bool theLastSlide;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!theLastSlide)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: onSkip,
                  child: Text(
                    'Skip',
                    softWrap: true,
                    style: TextStyle(color: colOne, fontSize: 18),
                  ),
                ),
              ],
            ),

          if (!theLastSlide)
            CircularIconButton(
              onPressed: onForward,
              progressValue: progress,
              progressColor: colOne,
              size: 80,
            ),
        ],
      ),
    );
  }
}

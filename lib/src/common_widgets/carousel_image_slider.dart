import 'package:bank_farming/src/common_widgets/txt_btn.dart';
import 'package:bank_farming/src/features/home/domain/category_slide.dart';
import 'package:bank_farming/src/features/intro/domain/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../constant/color_constant.dart';
import '../routing/route_names.dart';

class CarouselImageSlider extends StatelessWidget {
  const CarouselImageSlider({
    super.key,
    required this.slideProvider,
    required this.carouselController,
    required this.isLastSlide,
    this.onPageChanged,
  });

  final List<IntroSlider> slideProvider;
  final CarouselSliderController carouselController;
  final bool isLastSlide;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtil().screenHeight;
    double screenWidth = ScreenUtil().screenWidth;
    bool trueScreen = screenHeight >= 915.0 || screenWidth >= 412;

    return CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        height: double.infinity.sp,
        autoPlay: false,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        viewportFraction: 1.0,
        onPageChanged: onPageChanged,
      ),
      items:
          slideProvider.map((imagePath) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath.slideImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black, // Darker at the bottom
                      Colors.transparent, // Transparent at center
                    ],
                  ),
                ),
                child:
                    isLastSlide
                        ? Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              imagePath.slideHeader,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: trueScreen ? 30 : 35.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            20.verticalSpace,
                            //SizedBox(height: 20.0),
                            Text(
                              imagePath.slideSub,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: colFour, fontSize: 16),
                            ),
                            20.verticalSpace,
                            TxtBtn(
                              trueSize: trueScreen ? false : true,
                              toCart: () {
                                context.goNamed(RouteNames.login.name);
                              },
                              addText: 'Get Started',
                            ),
                          ],
                        )
                        : Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              imagePath.slideHeader,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: trueScreen ? 30 : 35.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              imagePath.slideSub,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: colFour, fontSize: 16),
                            ),
                            SizedBox(height: 120.0),
                          ],
                        ),
              ),
            );
          }).toList(),
    );
  }
}

class CategoryCarousel extends StatelessWidget {
  const CategoryCarousel({super.key, required this.categoryProvider});

  final List<CategorySlide> categoryProvider;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      items:
          categoryProvider.map((catData) {
            return Container(
              //padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 300.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(catData.categoryImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colThree.withAlpha(90),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          catData.categoryType,
                          style: TextStyle(
                            color: colFour,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colThree.withAlpha(90),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.favorite_outline, color: colFour),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colThree.withAlpha(90),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                catData.categoryHeader,
                                softWrap: true,
                                style: TextStyle(
                                  color: colFour,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                catData.categorySub,
                                softWrap: true,
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}

import 'package:bank_farming/src/features/intro/domain/intro_slider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'intro_slider_list.g.dart';

class IntroSliderList {
  List<IntroSlider> sliderList = [
    IntroSlider(
      slideImage: 'assets/images/wel_images/fmbp80YX.jpg',
      slideHeader: 'Farming is a profession of hope',
      slideSub: 'To make agriculture sustainable, the grower has got to be able to make a profit',
    ),
    IntroSlider(
      slideImage: 'assets/images/wel_images/O4vQwlfT.jpg',
      slideHeader: 'Agriculture feeds us, banking funds us',
      slideSub: 'If you want to help the economy and make money circulate, give it to a farmer.',
    ),
    IntroSlider(
      slideImage: 'assets/images/wel_images/P7dZewdK.jpg',
      slideHeader: 'Farming feeds the body, banking fuels the dream',
      slideSub: 'The ultimate goal of farming is not the growing of crops, but the cultivation and perfection of human beings',
    ),
    IntroSlider(
      slideImage: 'assets/images/wel_images/femme.jpg',
      slideHeader: 'Fall in Love with Farming in Blissful Banking',
      slideSub: 'Welcome to a community where farming feeds the nation, and banking fuels the dream',
    ),
  ];
}

@riverpod
List<IntroSlider> introSliderList(ref) => IntroSliderList().sliderList;

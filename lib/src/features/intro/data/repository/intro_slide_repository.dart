
import 'package:bank_farming/src/features/intro/data/data_source/intro_slider_list.dart';
import 'package:bank_farming/src/features/intro/domain/intro_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'intro_slide_repository.g.dart';

class IntroSlideRepository {
  const IntroSlideRepository(this.ref);

  final Ref ref;

  List<IntroSlider> fetchSlides() => ref.read(introSliderListProvider);
}


@riverpod
IntroSlideRepository introSlideRepository(ref) => IntroSlideRepository(ref);
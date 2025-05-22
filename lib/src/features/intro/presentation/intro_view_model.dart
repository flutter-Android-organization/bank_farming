import 'package:bank_farming/src/features/intro/data/repository/intro_slide_repository.dart';
import 'package:bank_farming/src/features/intro/domain/intro_slider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'intro_view_model.g.dart';


@Riverpod(keepAlive: true)
class IntroViewModel extends _$IntroViewModel  {
  @override
  FutureOr<List<IntroSlider>> build() async{
    return ref.watch(introSlideRepositoryProvider).fetchSlides();
  }

}
import 'package:bank_farming/src/features/home/data/data_source/category_data.dart';
import 'package:bank_farming/src/features/home/domain/category_slide.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'category_repository.g.dart';

class CategoryRepository {
  const CategoryRepository(this.ref);

  final Ref ref;

  List<CategorySlide> fetchData() => ref.read(categoryDataProvider);
}


@riverpod
CategoryRepository categoryRepository(ref) => CategoryRepository(ref);
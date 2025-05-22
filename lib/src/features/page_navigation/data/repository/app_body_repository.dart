import 'package:bank_farming/src/features/page_navigation/data/data_source/custom_app_body.dart';
import 'package:bank_farming/src/features/page_navigation/data/repository/page_nav_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_body_repository.g.dart';

class AppBodyRepository extends PageNavRepository {
  AppBodyRepository(this.ref);

  final Ref ref;

  @override
  List fetchList() => ref.read(customAppBodyProvider);
}

@riverpod
AppBodyRepository appBodyRepository(ref) => AppBodyRepository(ref);

import 'package:bank_farming/src/features/page_navigation/data/data_source/custom_app_bar.dart';
import 'package:bank_farming/src/features/page_navigation/data/repository/page_nav_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_bar_repository.g.dart';

class AppBarRepository extends PageNavRepository {
  AppBarRepository(this.ref);

  final Ref ref;

  @override
  List fetchList() => ref.read(customAppBarProvider);

}

@riverpod
AppBarRepository appBarRepository(ref) => AppBarRepository(ref);
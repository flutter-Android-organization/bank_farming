
import 'package:bank_farming/src/features/chat/data/data_source/drawer_data.dart';
import 'package:bank_farming/src/features/chat/domain/drawers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'drawer_repository.g.dart';

class DrawerRepository {
  const DrawerRepository(this.ref);

  final Ref ref;

  List<Drawers> fetchList() => ref.read(drawerDataProvider);
}

@riverpod
DrawerRepository drawerRepository(ref) => DrawerRepository(ref);
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  Widget build(BuildContext context) {
    return value.when(
        data: data,
        error: (e, st) => Center(child:  Text(
          e.toString(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.red),
        )),
        loading: () => Padding(
          padding: EdgeInsets.all(10),
          child: Center(child: CircularProgressIndicator()),
        )
    );
  }
}
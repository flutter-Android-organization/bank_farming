import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/drawers.dart';
part 'drawer_data.g.dart';

class DrawerData {
  List<Drawers> drawerItems = [
    Drawers(drawIcon: Icons.list_alt, drawTxt: 'Messages'),
    Drawers(drawIcon: Icons.group_add_outlined, drawTxt: 'New Group'),
    Drawers(drawIcon: Icons.phonelink, drawTxt: 'Linked Devices'),
    Drawers(drawIcon: Icons.star_border, drawTxt: 'Starred'),
    Drawers(drawIcon: Icons.settings, drawTxt: 'Setting'),
    Drawers(drawIcon: Icons.nightlight_outlined, drawTxt: 'Night Mode'),
  ];
}

@riverpod
List<Drawers> drawerData(ref) => DrawerData().drawerItems;
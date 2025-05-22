
import 'package:bank_farming/src/features/home/domain/horizontal_txt_btn.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'horizontal_btn_data.g.dart';

class HorizontalBtnData {
  List<HorizontalTxtBtn> btnList = [
    HorizontalTxtBtn(btnTxt: 'All'),
    HorizontalTxtBtn(btnTxt: 'Grain'),
    HorizontalTxtBtn(btnTxt: 'Vegetable'),
    HorizontalTxtBtn(btnTxt: 'Tubes'),
    HorizontalTxtBtn(btnTxt: 'Cashew'),
    HorizontalTxtBtn(btnTxt: 'Fruits'),
    HorizontalTxtBtn(btnTxt: 'Perishables'),
    HorizontalTxtBtn(btnTxt: 'Hybrids'),
    HorizontalTxtBtn(btnTxt: 'Herbs'),
    HorizontalTxtBtn(btnTxt: 'Organic'),
  ];
}

@riverpod
List<HorizontalTxtBtn> horizontalBtnData(ref) => HorizontalBtnData().btnList;
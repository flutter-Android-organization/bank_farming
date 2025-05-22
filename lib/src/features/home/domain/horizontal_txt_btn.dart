
class HorizontalTxtBtn {
  const HorizontalTxtBtn({required this.btnTxt});

  final String btnTxt;

  @override
  String toString() {
    return 'HorizontalTxtBtn{btnTxt: $btnTxt}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HorizontalTxtBtn &&
          runtimeType == other.runtimeType &&
          btnTxt == other.btnTxt;

  @override
  int get hashCode => btnTxt.hashCode;
}
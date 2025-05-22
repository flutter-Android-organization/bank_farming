import 'package:bank_farming/src/features/home/domain/category_slide.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'category_data.g.dart';

class CategoryData {
  List<CategorySlide> categoryList = [
    CategorySlide(
      categoryImage: 'assets/images/categories/Agricultural.jpg',
      categoryHeader: 'Farming is the backbone of every nation',
      categorySub:
          'Strong farms need strong banks, Finance the soil, feed the future',
      categoryType: 'Vegetable',
    ),
    CategorySlide(
      categoryImage: 'assets/images/categories/Campesinos.jpg',
      categoryHeader: 'Plant today, harvest tomorrow',
      categorySub:
          'Where farming grows, banking flows, Banking empowers the hands that feed us',
      categoryType: 'Grain',
    ),
    CategorySlide(
      categoryImage: 'assets/images/categories/Farming.jpg',
      categoryHeader: 'Where seeds are sown, hope grows',
      categorySub:
          'Plant a seed, support it with credit, Good harvests start with good investments',
      categoryType: 'Hybrids',
    ),
    CategorySlide(
      categoryImage: 'assets/images/categories/p9YK7f2c.jpg',
      categoryHeader: 'Good farming makes good food',
      categorySub:
          'From plough to profit—banking makes it possible, A farmer’s growth is a banker’s pride',
      categoryType: 'Organic',
    ),
    CategorySlide(
      categoryImage: 'assets/images/categories/xTsR9D1E.jpg',
      categoryHeader: 'The future is green, the future is farming',
      categorySub:
          'Secure farms, stable economies, Together, farming and banking cultivate prosperity',
      categoryType: 'Tubes',
    ),
  ];
}

@riverpod
List<CategorySlide> categoryData(ref) => CategoryData().categoryList;

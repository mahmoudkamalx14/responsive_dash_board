import 'package:responsive_dash_board/core/utils/app_images.dart';

class AllExpensessItemModel {
  final String image, title, date, price;

  const AllExpensessItemModel(
      {required this.image,
      required this.title,
      required this.date,
      required this.price});
}

List<AllExpensessItemModel> itemsAllExpensess = [
  const AllExpensessItemModel(
      image: Assets.assetsImagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensessItemModel(
      image: Assets.assetsImagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129'),
  const AllExpensessItemModel(
      image: Assets.assetsImagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129'),
];

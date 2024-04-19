import 'package:flutter/material.dart';

class IncomeDetailsItemModel {
  final Color color;
  final String title;
  final String value;

  IncomeDetailsItemModel(
      {required this.color, required this.title, required this.value});
}

List<IncomeDetailsItemModel> listItemsIncomeDetails = [
  IncomeDetailsItemModel(
    color: const Color(0xFF208BC7),
    title: 'Design service',
    value: '40%',
  ),
  IncomeDetailsItemModel(
    color: const Color(0xFF4DB7F2),
    title: 'Design product',
    value: '25%',
  ),
  IncomeDetailsItemModel(
    color: const Color(0xFF064060),
    title: 'Product royalti',
    value: '20%',
  ),
  IncomeDetailsItemModel(
    color: const Color(0xFFE2DECD),
    title: 'Other',
    value: '15%',
  ),
];

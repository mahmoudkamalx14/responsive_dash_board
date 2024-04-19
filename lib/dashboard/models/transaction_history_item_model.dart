class TransactionHistoryItemModel {
  final String title;
  final String date;
  final String price;

  TransactionHistoryItemModel(
      {required this.title, required this.date, required this.price});
}

List<TransactionHistoryItemModel> listTransactionHistoryItems = [
  TransactionHistoryItemModel(
    title: 'Cash Withdrawal',
    date: '13 Apr, 2022 ',
    price: '\$20,129',
  ),
  TransactionHistoryItemModel(
    title: 'Landing Page project',
    date: '13 Apr, 2022 at 3:30 PM',
    price: '\$2,000',
  ),
  TransactionHistoryItemModel(
    title: 'Cash Withdrawal',
    date: '13 Apr, 2022 at 3:30 PM',
    price: '\$20,129',
  ),
];

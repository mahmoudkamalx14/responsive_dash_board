import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/dashboard/widgets/quick_invoice/latest_transaction.dart';
import 'package:responsive_dash_board/dashboard/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dash_board/dashboard/widgets/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(height: 36, color: Color(0xffF1F1F1)),
        QuickInvoiceForm(),
      ],
    ));
  }
}

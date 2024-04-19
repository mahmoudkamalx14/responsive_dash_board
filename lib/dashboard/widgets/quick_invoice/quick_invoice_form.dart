import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_button.dart';
import 'package:responsive_dash_board/dashboard/widgets/quick_invoice/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 415
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleTextField(title: 'Customer name', hint: 'Customer name'),
              SizedBox(height: 12),
              TitleTextField(title: 'Customer Email', hint: 'Customer email'),
              SizedBox(height: 12),
              TitleTextField(title: 'Item name', hint: 'Item name'),
              SizedBox(height: 12),
              TitleTextField(title: 'Item mount', hint: 'USD'),
            ],
          )
        : const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: TitleTextField(
                          title: 'Customer name', hint: 'Customer name')),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TitleTextField(
                        title: 'Customer Email', hint: 'Customer email'),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                      child: TitleTextField(
                          title: 'Item name', hint: 'Item name')),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TitleTextField(title: 'Item mount', hint: 'USD'),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Add more details',
                      textColor: Color(0xFF4DB7F2),
                      backgourndColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: CustomButton(
                      text: 'Send Money',
                    ),
                  ),
                ],
              )
            ],
          );
  }
}

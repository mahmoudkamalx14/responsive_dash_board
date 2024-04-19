import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/card_details.dart';
import 'package:responsive_dash_board/dashboard/widgets/income/income_section.dart';

class MyCardAndIncome extends StatelessWidget {
  const MyCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBackgroundContainer(child: CardDetails()),
        SizedBox(height: 20),
        CustomBackgroundContainer(child: IncomeSection()),
      ],
    );
  }
}

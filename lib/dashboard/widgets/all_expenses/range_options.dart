import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';

class RangeOptions extends StatefulWidget {
  const RangeOptions({
    super.key,
  });

  @override
  State<RangeOptions> createState() => _RangeOptionsState();
}

class _RangeOptionsState extends State<RangeOptions> {
  final List<String> listRangeOptions = [
    'Daily',
    'Weekly',
    'Monthly',
    'annually',
  ];

  String selectedPeriod = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButton<String>(
            value: selectedPeriod,
            onChanged: (value) {
              setState(() {
                selectedPeriod = value!;
              });
            },
            icon: const SizedBox.shrink(),
            underline: const SizedBox.shrink(),

            items: listRangeOptions
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: AppStyles.styleMedium16,
                        ),
                      ),
                    ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => listRangeOptions
                .map((e) => Center(
                      child: Text(e, style: AppStyles.styleMedium16),
                    ))
                .toList(),
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}

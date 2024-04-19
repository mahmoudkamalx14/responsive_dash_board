import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/my_card_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardPageView extends StatefulWidget {
  const MyCardPageView({super.key});

  @override
  State<MyCardPageView> createState() => _MyCardPageViewState();
}

class _MyCardPageViewState extends State<MyCardPageView> {
  final int itemCount = 3;
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.toInt();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView(
          animationCurve: Curves.bounceIn,
          scrollDirection: Axis.horizontal,
          controller: pageController,
          animationDuration: Durations.medium2,
          children: List.generate(3, (index) => const MyCardImage()),
        ),
        const SizedBox(height: 19),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          axisDirection: Axis.horizontal,
          onDotClicked: (index) {
            setState(() {
              currentPageIndex == index;
            });
          },
          effect: const SlideEffect(
            spacing: 6.0,
            radius: 4.0,
            dotWidth: 8,
            dotHeight: 8,
            paintStyle: PaintingStyle.stroke,
            strokeWidth: 1.5,
            dotColor: Color(0xFFE7E7E7),
            activeDotColor: Color(0xFF4DB7F2),
            type: SlideType.slideUnder,
          ),
        )
      ],
    );
  }
}

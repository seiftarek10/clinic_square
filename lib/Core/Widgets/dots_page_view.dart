import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsPageView extends StatefulWidget {
  const DotsPageView({super.key, required this.test});

  final List<String> test;

  @override
  State<DotsPageView> createState() => _DotsPageViewState();
}

class _DotsPageViewState extends State<DotsPageView> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400.h,
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.test.length,
                    itemBuilder: (context, index) {
                      return Image.asset(widget.test[index], fit: BoxFit.cover);
                    })),
            Expanded(
                child: SmoothPageIndicator(
                    effect: WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      activeDotColor: AppColors.mainBlue,
                      dotColor: Colors.grey,
                    ),
                    controller: _pageController,
                    count: widget.test.length))
          ],
        ));
  }
}

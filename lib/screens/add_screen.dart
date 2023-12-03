import 'package:divar_app/screens/ad_image&title_screen.dart';
import 'package:divar_app/screens/category_ads_view.dart';
import 'package:divar_app/screens/general_category_ads_view.dart';
import 'package:divar_app/screens/location_screen.dart';
import 'package:divar_app/screens/save_ad_screen.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  double progressValue = 0.2;
  int pageViewValue = 0;
  PageController? pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'دسته بندی آویز',
            style: TextStyle(
              fontFamily: 'sm',
              fontSize: 20.0,
              color: Color(0xffE60023),
            ),
          ),
          leading: InkWell(
            onTap: () => pageController?.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease),
            child: Image.asset('assets/images/arrow-right.png'),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4),
            child: LinearProgressIndicator(
              backgroundColor: Colors.transparent,
              valueColor: const AlwaysStoppedAnimation(
                Color(0xffE60023),
              ),
              value: progressValue,
            ),
          ),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              progressValue = ((value + 1) / 10) * 2;
              pageViewValue = value;
              print(progressValue);
            });
          },
          children: [
            GeneralCategoryAdsView(pageController: pageController),
            CategoryAdsView(pageController: pageController),
            SaveAdScreen(pageController: pageController),
            LocationScreen(pageController: pageController),
            AdImageTitleScreen(pageController: pageController),
          ],
        ),
      ),
    );
  }
}

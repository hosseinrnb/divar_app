import 'package:flutter/material.dart';

class CategoryAdsView extends StatelessWidget {
  const CategoryAdsView({super.key, this.pageController});
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: getButtons(),
            ),
          ],
        ),
      ),
    );
  }

  Widget getButtons() {
    return Column(
      children: [
        categoryButton(title: 'فروش آپارتمان'),
        categoryButton(title: 'فروش خانه و ویلا'),
        categoryButton(title: 'فروش زمین و کلنگی'),
      ],
    );
  }

  Widget categoryButton({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 18.0),
      child: OutlinedButton(
        onPressed: () {
          pageController!.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey.shade200),
          elevation: 0.0,
          fixedSize: const Size(double.maxFinite, 50.0),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'sm',
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/arrow-left-red.png'),
          ],
        ),
      ),
    );
  }
}

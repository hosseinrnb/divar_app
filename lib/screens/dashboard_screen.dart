import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Image.asset('assets/images/myAviz.png'),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(height: 30.0),
              ),
              SliverToBoxAdapter(
                child: profileTitle(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24.0),
              ),
              SliverToBoxAdapter(
                child: profileCard(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 45.0),
              ),
              SliverToBoxAdapter(
                child: getButtons(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 30.0),
              ),
              SliverToBoxAdapter(
                child: getVersion(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getVersion() {
    return const Column(
      children: [
        Text(
          'نسخه\n۱.۵.۹',
          style: TextStyle(
            fontFamily: 'sm',
            fontSize: 14.0,
            color: Color(0xffD0D5DD),
          ),
        ),
      ],
    );
  }

  Widget getButtons() {
    return Column(
      children: [
        button(title: 'آگهی های من', image: 'note'),
        button(title: 'پرداخت های من', image: 'card'),
        button(title: 'بازدید های اخیر', image: 'eye'),
        button(title: 'ذخیره شده ها', image: 'save'),
        button(title: 'تنظیمات', image: 'setting'),
        button(title: 'پشتیبانی و قوانین', image: 'message-question'),
        button(title: 'درباره آویز', image: 'info-circle'),
      ],
    );
  }

  Widget button({required String title, required String image}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 18.0),
      child: OutlinedButton(
        onPressed: () {},
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
            Image.asset('assets/images/$image.png'),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'sm',
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/arrow-left-grey.png'),
          ],
        ),
      ),
    );
  }

  Widget profileTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset('assets/images/profile.png'),
          const SizedBox(width: 8.0),
          const Text(
            'حساب کاربری',
            style: TextStyle(fontFamily: 'sb', fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget profileCard() {
    return Container(
      height: 95.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 60.0,
              height: 60.0,
              child: Image.asset('assets/images/Vector.png'),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'سید محمد جواد هاشمی',
                  style: TextStyle(fontFamily: 'sm', fontSize: 14.0),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      '۰۹۱۱۷۵۴۰۱۴۵',
                      style: TextStyle(fontFamily: 'sm', fontSize: 14.0),
                    ),
                    const SizedBox(width: 8.0),
                    Container(
                      width: 66.0,
                      height: 26.0,
                      decoration: const BoxDecoration(
                        color: Color(0xffE60023),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Center(
                        child: Text(
                          'تایید شده',
                          style: TextStyle(
                              fontFamily: 'sm',
                              color: Colors.white,
                              fontSize: 12.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/edit.png'),
            ),
          ],
        ),
      ),
    );
  }
}

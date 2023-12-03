import 'package:divar_app/screens/switch_button.dart';
import 'package:flutter/material.dart';

class SaveAdScreen extends StatefulWidget {
  const SaveAdScreen({super.key, this.pageController});
  final PageController? pageController;

  @override
  State<SaveAdScreen> createState() => _SaveAdScreenState();
}

class _SaveAdScreenState extends State<SaveAdScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
              SliverToBoxAdapter(
                child: chooseCategoryTitle(),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
              SliverToBoxAdapter(
                child: chooseCategory(),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 64.0)),
              SliverToBoxAdapter(
                child: propertiesTitle(),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
              SliverToBoxAdapter(
                child: properties(),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 64.0)),
              SliverToBoxAdapter(
                child: amenitiesTitle(),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 10.0)),
              SliverToBoxAdapter(
                child: amenities(),
              ),
              SliverToBoxAdapter(
                child: nextButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: ElevatedButton(
        onPressed: () {
          widget.pageController!.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffE60023),
          fixedSize: const Size(double.maxFinite, 50.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
        ),
        child: const Text(
          'بعدی',
          style: TextStyle(
            fontFamily: 'sb',
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget amenities() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SwitchButton(text: 'آسانسور'),
          SwitchButton(text: 'پارکینگ'),
          SwitchButton(text: 'انباری'),
        ],
      ),
    );
  }

  Widget chooseCategory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'دسته بندی',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'محدوده ملک',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Container(
                height: 50.0,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                width: 160.0,
                child: Row(
                  children: [
                    const Text(
                      'فروش آپارتمان',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16.0,
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/images/arrow-down.png'),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0))),
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'خیابان صیاد شیرازی',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget properties() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'متراژ',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'تعداد اتاق',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Container(
                width: 165.0,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                height: 50.0,
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '۳۵۰',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16.0,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/up.png',
                          width: 10.0,
                          height: 10.0,
                        ),
                        const SizedBox(height: 5.0),
                        Image.asset(
                          'assets/images/down.png',
                          width: 10.0,
                          height: 10.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 25.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0))),
                  height: 50.0,
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '۶',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/up.png',
                            width: 10.0,
                            height: 10.0,
                          ),
                          const SizedBox(height: 5.0),
                          Image.asset(
                            'assets/images/down.png',
                            width: 10.0,
                            height: 10.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Row(
            children: [
              Expanded(
                child: Text(
                  'طبقه',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'سال ساخت',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14.0,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Container(
                width: 165.0,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                height: 50.0,
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '۳',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16.0,
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/up.png',
                          width: 10.0,
                          height: 10.0,
                        ),
                        const SizedBox(height: 5.0),
                        Image.asset(
                          'assets/images/down.png',
                          width: 10.0,
                          height: 10.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 25.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0))),
                  height: 50.0,
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '۱۴۰۲',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 16.0,
                        ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/up.png',
                            width: 10.0,
                            height: 10.0,
                          ),
                          const SizedBox(height: 5.0),
                          Image.asset(
                            'assets/images/down.png',
                            width: 10.0,
                            height: 10.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget amenitiesTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset('assets/images/magicpen.png'),
          const SizedBox(width: 8.0),
          const Text(
            'امکانات',
            style: TextStyle(
              fontFamily: 'sb',
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget propertiesTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset('assets/images/clipboard.png'),
          const SizedBox(width: 8.0),
          const Text(
            'ویژگی ها',
            style: TextStyle(
              fontFamily: 'sb',
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget chooseCategoryTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset('assets/images/category.png'),
          const SizedBox(width: 8.0),
          const Text(
            'انتخاب دسته بندی آویز',
            style: TextStyle(
              fontFamily: 'sb',
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}



/* 

Container(
                      color: Colors.grey[300],
                      child: const TextField(
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),

*/

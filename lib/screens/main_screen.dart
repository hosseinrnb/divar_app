import 'package:divar_app/constants/custom_colors.dart';
import 'package:divar_app/screens/login_screen.dart';
import 'package:divar_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50.0),
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      activeIndex = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * .4,
                        decoration: const BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/bg.png',
                            ),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/image.png',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'اینجا محل',
                            style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 16.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.asset('assets/images/aviz.png'),
                          ),
                          const Text(
                            'آگهی شماست',
                            style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .8,
                        child: const Text(
                          'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید',
                          style: TextStyle(
                            fontFamily: 'sm',
                            fontSize: 14.0,
                            color: CustomColors.grey500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: isActiveIndex(index) ? 16 : 6,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: isActiveIndex(index)
                          ? BorderRadius.circular(8)
                          : null,
                      shape: isActiveIndex(index)
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      color: isActiveIndex(index)
                          ? CustomColors.baseColor
                          : CustomColors.grey500,
                    ),
                  ),
                ),
              ),
              _getButtons(),
            ],
          ),
        ),
      ),
    );
  }

  bool isActiveIndex(int index) {
    return (activeIndex == index);
  }

  Widget _getButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffE60023),
              fixedSize: const Size(160, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text(
              'ثبت نام',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xffFFFFFF),
                fontFamily: 'sm',
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen()));
            },
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFFFFFF),
              fixedSize: const Size(160, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              side: const BorderSide(color: Color(0xffE60023)),
            ),
            child: const Text(
              'ورود',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xffE60023),
                fontFamily: 'sm',
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}

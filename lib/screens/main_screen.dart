import 'package:divar_app/screens/login_screen.dart';
import 'package:divar_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 170.0,
            left: 25.0,
            child: Image.asset('assets/images/bg.png'),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 120.0),
                  Image.asset('assets/images/image.png'),
                  const SizedBox(height: 40.0),
                  Image.asset('assets/images/title.png'),
                  const SizedBox(height: 20.0),
                  const Text(
                    'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید \n و یا اگر دنبال ملک با مشخصات دلخواه خود هستید \n آویز ها را ببینید',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'sm',
                      color: Color(0xff98A2B3),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Image.asset('assets/images/indicator.png'),
                  const SizedBox(height: 20.0),
                  _getButtons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
          const Spacer(),
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
        ],
      ),
    );
  }
}

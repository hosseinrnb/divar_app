import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 70.0,
              bottom: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'ورود به',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'sb',
                      ),
                    ),
                    Image.asset('assets/images/aviz.png'),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'sm',
                    color: Color(0xff98A2B3),
                  ),
                ),
                const SizedBox(height: 50.0),
                Container(
                  height: 50.0,
                  color: Colors.grey[100],
                  child: TextField(
                    controller: _phoneNumberController,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: ' شماره موبایل',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'sm',
                        color: Colors.grey[400],
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE60023),
                    fixedSize: const Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'مرحله بعد',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Image.asset('assets/images/arrow-left.png'),
                    ],
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تاحالا ثبت نام نکردی؟',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 14,
                        color: Colors.grey[400],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'ثبت نام',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14,
                          color: Color(0xffE60023),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

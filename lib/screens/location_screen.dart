import 'package:divar_app/screens/switch_button.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key, this.pageController});
  final PageController? pageController;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 36.0),
              locationTitle(),
              const SizedBox(height: 32.0),
              location(),
              const SizedBox(height: 32.0),
              const SwitchButton(text: 'موقعیت دقیق نقشه نمایش داده شود؟'),
              const Spacer(),
              nextButton(),
              const SizedBox(height: 110.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton() {
    return ElevatedButton(
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
    );
  }

  Widget location() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.asset(
            'assets/images/maps.png',
            fit: BoxFit.fitWidth,
            width: double.maxFinite,
            height: 144.0,
          ),
        ),
        Positioned(
          top: 50.0,
          right: 80.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffE60023),
              fixedSize: const Size(210.0, 45.0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
            ),
            child: Row(
              children: [
                const Text(
                  'گرگان، صیاد شیرا...',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Image.asset('assets/images/location.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget locationTitle() {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/images/map.png'),
            const SizedBox(width: 8.0),
            const Text(
              'موقعیت مکانی',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.',
          style: TextStyle(
            fontFamily: 'sm',
            fontSize: 14.0,
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}

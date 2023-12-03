import 'package:divar_app/screens/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AdImageTitleScreen extends StatefulWidget {
  const AdImageTitleScreen({super.key, this.pageController});
  final PageController? pageController;

  @override
  State<AdImageTitleScreen> createState() => _AdImageTitleScreenState();
}

class _AdImageTitleScreenState extends State<AdImageTitleScreen> {
  bool hasElevator = false;
  bool hasParking = false;
  bool hasStoreRoom = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 36.0)),
                SliverToBoxAdapter(
                  child: chooseImageTitle(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24.0)),
                SliverToBoxAdapter(
                  child: chooseImage(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 36.0)),
                SliverToBoxAdapter(
                  child: adTitle(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24.0)),
                SliverToBoxAdapter(
                  child: adTextfield(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 36.0)),
                SliverToBoxAdapter(
                  child: desciptionTitle(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 24.0)),
                SliverToBoxAdapter(
                  child: descTextfield(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverToBoxAdapter(
                  child: contactOptions(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverToBoxAdapter(
                  child: saveButton(),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget saveButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffE60023),
        fixedSize: const Size(double.maxFinite, 50.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
      ),
      child: const Text(
        'ثبت آگهی',
        style: TextStyle(
          fontFamily: 'sb',
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget contactOptions() {
    return const Column(
      children: [
        SwitchButton(text: 'فعال کردن گفتگو'),
        SwitchButton(text: 'فعال کردن تماس'),
      ],
    );
  }

  Widget contactCard({required String text, required String image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'sm',
                fontSize: 16.0,
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/$image.png'),
          ],
        ),
      ),
    );
  }

  Widget descTextfield() {
    return Container(
      height: 105.0,
      color: Colors.grey[100],
      child: TextField(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: 'توضیحات آویز را وارد کنید ...',
          hintStyle: TextStyle(
            fontSize: 16.0,
            fontFamily: 'sm',
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget adTextfield() {
    return Container(
      height: 50.0,
      color: Colors.grey[100],
      child: TextField(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: 'عنوان آویز را وارد کنید',
          hintStyle: TextStyle(
            fontSize: 16.0,
            fontFamily: 'sm',
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget chooseImage() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(5.0),
      strokeWidth: 1.5,
      dashPattern: const [10.0, 5.0],
      color: Colors.grey.shade300,
      child: SizedBox(
        height: 160.0,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'لطفا تصویر آویز خود را بارگذاری کنید',
              style: TextStyle(
                  fontFamily: 'sm',
                  fontSize: 14.0,
                  color: Colors.grey.shade500),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE60023),
                fixedSize: const Size(175.0, 45.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/upload.png'),
                  const SizedBox(width: 12.0),
                  const Text(
                    'انتخاب تصویر',
                    style: TextStyle(
                      fontFamily: 'sm',
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget desciptionTitle() {
    return Row(
      children: [
        Image.asset('assets/images/description.png'),
        const SizedBox(width: 8.0),
        const Text(
          'توضیحات',
          style: TextStyle(
            fontFamily: 'sb',
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget adTitle() {
    return Row(
      children: [
        Image.asset('assets/images/edit2.png'),
        const SizedBox(width: 8.0),
        const Text(
          'عنوان آویز',
          style: TextStyle(
            fontFamily: 'sb',
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget chooseImageTitle() {
    return Row(
      children: [
        Image.asset('assets/images/camera.png'),
        const SizedBox(width: 8.0),
        const Text(
          'تصویر آویز',
          style: TextStyle(
            fontFamily: 'sb',
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
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
        ),
        body: SafeArea(
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
        ),
      ),
    );
  }

  Widget getButtons() {
    return Column(
      children: [
        categoryButton(title: 'اجاره مسکونی'),
        categoryButton(title: 'فروش مسکونی'),
        categoryButton(title: 'فروش دفاتر اداری و تجاری'),
        categoryButton(title: 'اجاره دفاتر اداری و تجاری'),
        categoryButton(title: 'اجاره کوتاه مدت'),
        categoryButton(title: 'پروژه های ساخت و ساز'),
      ],
    );
  }

  Widget categoryButton({required String title}) {
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

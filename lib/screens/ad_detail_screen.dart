import 'package:divar_app/constants/custom_colors.dart';
import 'package:divar_app/constants/list.dart';
import 'package:divar_app/widgets/elevated_button.dart';
import 'package:divar_app/widgets/title_with_icon.dart';
import 'package:flutter/material.dart';

class AdDetailScreen extends StatefulWidget {
  const AdDetailScreen({super.key});

  @override
  State<AdDetailScreen> createState() => _AdDetailScreenState();
}

class _AdDetailScreenState extends State<AdDetailScreen> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset('assets/images/arrow-right.png'),
          ),
          actions: [
            Image.asset('assets/images/information.png'),
            const SizedBox(width: 24.0),
            Image.asset('assets/images/share.png'),
            const SizedBox(width: 24.0),
            Image.asset('assets/images/archive.png'),
            const SizedBox(width: 16.0),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
                    SliverToBoxAdapter(
                      child: getImage(),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
                    SliverToBoxAdapter(
                      child: getCategoryAndTime(),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 24.0)),
                    SliverToBoxAdapter(
                      child: getAdTitle(),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 64.0)),
                    SliverToBoxAdapter(
                      child: warningCard(),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 30,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              _tab(
                                title: 'مشخصات',
                                isActive: selectedTab == 0 ? true : false,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 0;
                                  });
                                },
                              ),
                              const SizedBox(width: 18.0),
                              _tab(
                                  title: 'قیمت',
                                  isActive: selectedTab == 1 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedTab = 1;
                                    });
                                  }),
                              const SizedBox(width: 18.0),
                              _tab(
                                  title: 'ویژگی ها و امکانات',
                                  isActive: selectedTab == 2 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedTab = 2;
                                    });
                                  }),
                              const SizedBox(width: 18.0),
                              _tab(
                                  title: 'توضیحات',
                                  isActive: selectedTab == 3 ? true : false,
                                  onTap: () {
                                    setState(() {
                                      selectedTab = 3;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
                    SliverToBoxAdapter(
                        child: _getTabContent(index: selectedTab)),
                  ],
                ),
                Positioned(
                  bottom: 10.0,
                  width: MediaQuery.sizeOf(context).width - 30,
                  child: getContactButtons(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getTabContent({required int index}) {
    List<Widget> tabsContentsList = [
      Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: Colors.grey.shade200)),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'متراژ',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey500,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        '۵۰۰',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.0,
                  child: CustomPaint(
                    painter: VerticalDashedLinePainter(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'اتاق',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey500,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        '۶',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.0,
                  child: CustomPaint(
                    painter: VerticalDashedLinePainter(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'طبقه',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey500,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'دوبلکس',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.0,
                  child: CustomPaint(
                    painter: VerticalDashedLinePainter(),
                  ),
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'ساخت',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey500,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        '۱۴۰۲',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 14.0,
                          color: CustomColors.grey700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32.0),
          const GenerateTitleWithIcon(
              title: 'موقعیت مکانی', iconPath: 'assets/images/map.png'),
          const SizedBox(height: 24.0),
          Container(
            height: MediaQuery.sizeOf(context).height * .2,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    CustomColors.baseColor.withOpacity(.4), BlendMode.color),
                fit: BoxFit.cover,
                image: const AssetImage(
                  'assets/images/maps.png',
                ),
              ),
            ),
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * .45,
              height: 50,
              child: GenerateElevatedButton(
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'گرگان، صیاد شیرازی',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 16.0,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Image.asset('assets/images/location.png'),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(height: 90.0),
        ],
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
            border: Border.all(
          color: CustomColors.grey300,
        )),
        child: const GenerateTabContentList(
            list: MyTestList.priceTabContentList, color: CustomColors.grey700),
      ),
      Column(
        children: [
          const GenerateTitleWithIcon(
              title: 'ویژگی ها', iconPath: 'assets/images/property.png'),
          const SizedBox(height: 24.0),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.grey100,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const GenerateTabContentList(
                list: MyTestList.featuresTabContentList,
                color: CustomColors.grey100),
          ),
          const SizedBox(height: 32.0),
          const GenerateTitleWithIcon(
              title: 'امکانات', iconPath: 'assets/images/magicpen.png'),
          const SizedBox(height: 24.0),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.grey100,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const GenerateTabContentList(
                list: MyTestList.facilitiesTabContentList,
                color: CustomColors.grey100),
          ),
          const SizedBox(height: 80.0),
        ],
      ),
      const Text(
        'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.',
        style: TextStyle(
          fontFamily: 'sm',
          fontSize: 14.0,
          color: CustomColors.grey500,
        ),
      ),
    ];

    return tabsContentsList[index];
  }

  Widget _tab({
    required String title,
    required bool isActive,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xffE60023) : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'sm',
            fontSize: 14.0,
            color: isActive ? Colors.white : Colors.red,
          ),
        ),
      ),
    );
  }

  Widget getContactButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffE60023),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/message.png'),
                const SizedBox(width: 10.0),
                const Text(
                  'گفتگو',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 25.0),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffE60023),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
            ),
            child: Row(
              children: [
                Image.asset('assets/images/call.png'),
                const SizedBox(width: 10.0),
                const Text(
                  'اطلاعات تماس',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget warningCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          const Text(
            'هشدار های قبل از معامله!',
            style: TextStyle(
              fontFamily: 'sm',
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
          Image.asset('assets/images/arrow-left-grey.png'),
        ],
      ),
    );
  }

  Widget getAdTitle() {
    return const Text(
      'آپارتمان ۵۰۰ متری در صیاد شیرازی',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontFamily: 'sb',
        fontSize: 16.0,
      ),
    );
  }

  Widget getCategoryAndTime() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 4.0,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            color: Colors.grey.shade100,
          ),
          child: const Text(
            'آپارتمان',
            style: TextStyle(
              fontFamily: 'sm',
              fontSize: 14.0,
              color: Color(0xffE60023),
            ),
          ),
        ),
        const Spacer(),
        Text(
          '۱۶ دقیقه پیش در گرگان',
          style: TextStyle(
            fontFamily: 'sm',
            fontSize: 14.0,
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }

  Widget getImage() {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          'assets/images/6.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class HorizontalDashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5, dashSpace = 4, startX = 0;
    final paint = Paint()
      ..color = CustomColors.grey200
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class VerticalDashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 4, startY = 0;
    final paint = Paint()
      ..color = Colors.grey.shade200
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class GenerateTabContentList extends StatelessWidget {
  const GenerateTabContentList(
      {super.key,
      required this.list,
      this.fontSize = 16.0,
      required this.color});
  final List<Map<String, String>> list;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                list[index]['title']!,
                style: const TextStyle(
                  fontFamily: 'sm',
                  fontSize: 16.0,
                  color: CustomColors.grey500,
                ),
              ),
              Text(
                list[index]['value']!,
                style: const TextStyle(
                  fontFamily: 'sm',
                  fontSize: 16.0,
                  color: CustomColors.grey700,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.sizeOf(context).width,
            child: CustomPaint(
              painter: HorizontalDashedLinePainter(),
            ),
          );
        },
        itemCount: list.length);
  }
}

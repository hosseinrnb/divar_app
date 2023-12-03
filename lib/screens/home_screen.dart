import 'package:divar_app/screens/ad_detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset('assets/images/aviz.png'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _getMostViewedTitle(),
              ),
              SliverToBoxAdapter(
                child: _getMostViewed(),
              ),
              SliverToBoxAdapter(
                child: _getRecentViewedTitle(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return _getRecentViewed();
                  },
                  childCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getRecentViewed() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
        left: 16.0,
        bottom: 16.0,
      ),
      child: mostRecentCard(),
    );
  }

  Widget _getMostViewed() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
        left: 16.0,
      ),
      child: SizedBox(
        height: 250.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return mostViewedCard();
          },
        ),
      ),
    );
  }

  Widget _getRecentViewedTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Row(
        children: [
          const Text(
            'آویز های اخیر',
            style: TextStyle(
              fontFamily: 'sb',
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'مشاهده همه',
              style: TextStyle(
                fontFamily: 'sm',
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getMostViewedTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Row(
        children: [
          const Text(
            'آویز های داغ',
            style: TextStyle(
              fontFamily: 'sb',
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'مشاهده همه',
              style: TextStyle(
                fontFamily: 'sm',
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mostRecentCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AdDetailScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(14.0),
        width: 345.0,
        height: 140.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(255, 231, 231, 231),
              blurRadius: 5.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 185.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'واحد دوبلکس فول امکانات',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'sb',
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'sm',
                      fontSize: 12.0,
                      color: Color(0xff98A2B3),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        'قیمت:',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 14.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 14.0,
                          color: Color(0xffE60023),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/4.png',
              width: 115.0,
              height: 115.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget mostViewedCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AdDetailScreen(),
          ),
        );
      },
      child: Container(
        width: 230.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.grey,
          //     blurRadius: 8.0,
          //     offset: Offset(0.0, 5.0),
          //   ),
          // ],
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/1.png',
              width: 200.0,
              height: 120.0,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'ویلا ۵۰۰ متری زیر قیمت',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 12.0,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Text(
                  'قیمت:',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 14.0,
                  ),
                ),
                Spacer(),
                Text(
                  '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 14.0,
                    color: Color(0xffE60023),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:divar_app/screens/add_screen.dart';
import 'package:divar_app/screens/dashboard_screen.dart';
import 'package:divar_app/screens/home_screen.dart';
import 'package:divar_app/screens/search_screen.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  int _selectedBottomNavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              fixedColor: const Color(0xfff9fafb),
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xfff9fafb),
              onTap: (int index) {
                setState(() {
                  _selectedBottomNavigationItem = index;
                });
              },
              currentIndex: _selectedBottomNavigationItem,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/home_active.png'),
                  icon: Image.asset('assets/images/home.png'),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/search_active.png'),
                  icon: Image.asset('assets/images/search.png'),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/add_active.png'),
                  icon: Image.asset('assets/images/add.png'),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/images/user_active.png'),
                  icon: Image.asset('assets/images/user.png'),
                  label: 'User Profile',
                ),
              ],
            ),
          ),
        ),
        body: IndexedStack(
          index: _selectedBottomNavigationItem,
          children: getLayout(),
        ),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      const HomeScreen(),
      const SearchScreen(),
      const AddScreen(),
      const DashboardScreen(),
    ];
  }
}

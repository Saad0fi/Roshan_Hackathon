import 'package:flutter/material.dart';
import 'package:glow_bottom_app_bar/glow_bottom_app_bar.dart';

import '../controller/navigation_controller.dart';

class NavigationScreen extends StatefulWidget {
  //final Function(ThemeMode)? toggleThemeMode;
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

/// this class will show Navigation bar*
class _NavigationScreenState extends State<NavigationScreen> {
  NavigationBarController controller = NavigationBarController();

  int index = 0;
  // final bottomPadding = MediaQuery.of(context).padding.bottom;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: Builder(
          builder: (context) {
            final mediaQuery = MediaQuery.of(context);
            return MediaQuery(
              data: mediaQuery.removeViewPadding(removeBottom: true),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BottomNavigationBar(
                    elevation: 0,
                    landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
                    showSelectedLabels: true,
                    type: BottomNavigationBarType.fixed,
                    selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                    backgroundColor: Color(0xff494954),
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Color(0xffE2E2E2),
                    items: [
                      BottomNavigationBarItem(
                        activeIcon: Image(
                          image: AssetImage("assets/images/image 9 (1).png"),
                        ),
                        icon: Image(
                          image: AssetImage("assets/images/image 10.png"),
                        ),
                        //Icon(Icons.home_outlined, color: Colors.grey.shade700),
                        label: 'حيّك',
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Image(
                          image: AssetImage(
                            "assets/images/flowbite_search-outline (1).png",
                          ),
                        ),
                        icon: Image(
                          image: AssetImage(
                            "assets/images/flowbite_search-outline.png",
                          ),
                        ),
                        label: 'اكتشف',
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Image(
                          image: AssetImage(
                            "assets/images/fluent_chat-28-filled.png",
                          ),
                        ),
                        icon: Image(
                          image: AssetImage(
                            "assets/images/fluent_chat-24-regular.png",
                          ),
                        ),
                        label: 'سولف',
                      ),
                      BottomNavigationBarItem(
                        //Group (4)
                        activeIcon: Image(
                          image: AssetImage("assets/images/Group (4).png"),
                        ),
                        icon: Image(
                          image: AssetImage("assets/images/Group (3).png"),
                        ),
                        label: 'حسابك',
                      ),
                    ],
                    currentIndex: controller.currentIndex,
                    /**on tab go to selected screen**/
                    onTap: (index) {
                      setState(() {
                        controller.currentIndex = index;
                      });
                    },
                    //Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     _buildNavItem('حيّك', 'assets/images/image 10.png', isActive: true),
                    //     _buildNavItem('اكتشف', 'assets/images/flowbite_search-outline.png'),
                    //     _buildNavItem('سولف', 'assets/images/fluent_chat-24-regular.png'),
                    //     _buildNavItem('حسابك', 'assets/images/Group (3).png'),
                    //   ],
                    // ),
                  ),
                ),
              ),
            );
          },
        ),
        body: controller.screens[controller.currentIndex],
      ),
    );
  }
}

Widget buildNavItem(
  String label,
  String iconPath, {
  bool isActive = false,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          height: 28,
          color: isActive ? Colors.white : Color(0xffE2E2E2),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Color(0xffE2E2E2),
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}

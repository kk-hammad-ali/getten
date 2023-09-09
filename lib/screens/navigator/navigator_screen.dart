import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/state/navigator_state.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/constant/constant.dart';
import 'package:getten/utils/responsive/dimension.dart';

class NavigatorScreen extends StatelessWidget {
  final navigationController = Get.put(NavigationController());

  NavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: navigationController.selectedIndex,
            children: [
              for (int i = 0; i < navigatorPages.length; i++)
                Visibility(
                  visible: navigationController.selectedIndex == i,
                  maintainState: true,
                  child: navigatorPages[i],
                ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: navigationController.selectedIndex,
            selectedLabelStyle: TextStyle(
              fontSize: dimensions.getScreenWidth * 0.045,
              color: AppColors.primaryColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: dimensions.getScreenWidth * 0.045,
              color: AppColors.greyScale900Color,
            ),
            onTap: (index) {
              navigationController.setIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: navigationController.selectedIndex == 0
                      ? AppColors.primaryColor
                      : AppColors.greyScale900Color,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                  color: navigationController.selectedIndex == 1
                      ? AppColors.primaryColor
                      : AppColors.greyScale900Color,
                ),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin,
                  color: navigationController.selectedIndex == 2
                      ? AppColors.primaryColor
                      : AppColors.greyScale900Color,
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                  color: navigationController.selectedIndex == 3
                      ? AppColors.primaryColor
                      : AppColors.greyScale900Color,
                ),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: navigationController.selectedIndex == 4
                      ? AppColors.primaryColor
                      : AppColors.greyScale900Color,
                ),
                label: 'Meni',
              ),
            ],
          ),
        ));
  }
}

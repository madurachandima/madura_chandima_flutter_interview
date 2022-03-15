import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:madura_chandima_flutter_interview/controllers/home_controller.dart';
import 'package:sizer/sizer.dart';

class CustomeBottomNavigationbar extends StatelessWidget {
  const CustomeBottomNavigationbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Homecontroller _controlller = Get.find();
    return Obx(() => BottomNavigationBar(
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 4.4.h,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrowshape_turn_up_right, size: 4.4.h),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart, size: 4.4.h),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled, size: 4.4.h),
              label: '',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: ColorConfig.blue,
          unselectedItemColor: ColorConfig.gray,
          onTap: (index) => _controlller.navbarselectedindex.value = index,
          currentIndex: _controlller.navbarselectedindex.value,
          // onTap: _onItemTapped,
        ));
  }
}

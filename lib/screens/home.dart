import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:madura_chandima_flutter_interview/controllers/home_controller.dart';
import 'package:madura_chandima_flutter_interview/utils/const.dart';
import 'package:madura_chandima_flutter_interview/widgets/custome_appbar.dart';
import 'package:madura_chandima_flutter_interview/widgets/custome_bottom_navogationbar.dart';
import 'package:madura_chandima_flutter_interview/widgets/custome_button.dart';
import 'package:madura_chandima_flutter_interview/widgets/vr_card.dart';
import 'package:madura_chandima_flutter_interview/widgets/vr_item_card.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Homecontroller _controlller = Get.put(Homecontroller());

    return Scaffold(
      appBar: CustomeAppbar(),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: Text("Enjoy the world in \nin to virtual reality",
                    style: Theme.of(context).textTheme.headline1),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: const VRCard(),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                    itemCount: Constents().itemCategory.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Obx(() => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Customebutton(
                                callbackFunction: () {
                                  _controlller.selectesIndex.value = index;
                                },
                                buttontText: Text(
                                  Constents().itemCategory[index],
                                  style:
                                      index == _controlller.selectesIndex.value
                                          ? const TextStyle(
                                              color: ColorConfig.white)
                                          : const TextStyle(
                                              color: ColorConfig.black),
                                ),
                                backgroundColor:
                                    index == _controlller.selectesIndex.value
                                        ? ColorConfig.blue
                                        : ColorConfig.gray),
                          ));
                    },
                  )),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 38.h,
                child: VRItemCard(controlller: _controlller),
              ),
              SizedBox(
                height: 2.h,
              ),
            ]),
      ),
      bottomNavigationBar: const CustomeBottomNavigationbar(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:sizer/sizer.dart';

class CustomeAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  CustomeAppbar({Key? key})
      : preferredSize = Size.fromHeight(8.h),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorConfig.white,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.list_dash,
              color: ColorConfig.black,
              size: 4.h,
            )),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: ColorConfig.black,
              size: 4.2.h,
            )),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: EdgeInsets.only(right: 5.w),
          child: InkWell(
            onTap: () {},
            child: Stack(alignment: Alignment.center, children: [
              Icon(
                CupertinoIcons.bag,
                color: ColorConfig.black,
                size: 4.2.h,
              ),
              Positioned(
                left: 22,
                top: 13,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ]),
          ),
        )
      ],
    );
  }
}

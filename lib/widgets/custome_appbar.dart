import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomeAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  CustomeAppbar({Key? key})
      : preferredSize = Size.fromHeight(15.h),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}

import 'package:flutter/material.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:madura_chandima_flutter_interview/widgets/custome_button.dart';
import 'package:sizer/sizer.dart';

class VRCard extends StatelessWidget {
  const VRCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Stack(
        children: [
          SizedBox(
            width: 80.w,
            height: 27.h,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              elevation: 0,
              color: ColorConfig.blue,
              child: Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Improved Controller \nDesign With \nVirtual Reality",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 6.h,
                        child: Customebutton(
                            callbackFunction: () {},
                            buttontText: const Text(
                              "Buy Now!",
                              style: TextStyle(color: ColorConfig.blue),
                            ),
                            backgroundColor: ColorConfig.white),
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
              top: 5,
              left: 170,
              child: SizedBox(
                width: 25.h,
                child: Image.network(
                  "https://i.postimg.cc/L6rzhPQj/1-Varjo-VR-3.png",
                  fit: BoxFit.contain,
                ),
              ))
        ],
      ),
    );
  }
}

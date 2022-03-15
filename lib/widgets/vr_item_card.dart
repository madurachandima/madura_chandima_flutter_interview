import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:madura_chandima_flutter_interview/configs/text_style_config.dart';
import 'package:madura_chandima_flutter_interview/screens/product_details.dart';
import 'package:sizer/sizer.dart';

class VRItemCard extends StatelessWidget {
  final controlller;
  const VRItemCard({Key? key, required this.controlller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          itemCount: controlller.items.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () async {
                await controlller.getProductDetails();
                Get.to(() => const ProductDetails());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  height: 35.h,
                  width: 40.w,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    color: ColorConfig.gray,
                    elevation: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.network(
                            controlller.items[index].images,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(controlller.items[index].title,
                                style: TextStyle(
                                  fontFamily: BOLD_FONT,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.start),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8, top: 8, right: 8),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              controlller.items[index].price,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(right: 1),
                            decoration: const BoxDecoration(
                              color: ColorConfig.black,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.add,
                              color: ColorConfig.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';
import 'package:madura_chandima_flutter_interview/controllers/home_controller.dart';
import 'package:madura_chandima_flutter_interview/widgets/custome_button.dart';
import 'package:madura_chandima_flutter_interview/widgets/product_options.dart';
import 'package:madura_chandima_flutter_interview/widgets/product_rating_view.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Homecontroller _controller = Get.find();
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                centerTitle: false,
                elevation: 0,
                expandedHeight: 40.h,
                floating: false,
                pinned: true,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: InkWell(
                      onTap: () {},
                      child: Stack(alignment: Alignment.center, children: [
                        Icon(
                          CupertinoIcons.bag,
                          color: ColorConfig.white,
                          size: 4.0.h,
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
                flexibleSpace: Obx(() => FlexibleSpaceBar(
                        background: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                      ),
                      items: [_controller.produtDetails.value.images].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Image.network(i.toString()));
                          },
                        );
                      }).toList(),
                    ))),
                backgroundColor: ColorConfig.blue,
              ),
              //SliverList(delegate: SliverChildListDelegate([]))
            ];
          },
          body: Container(
            color: ColorConfig.blue,
            child: Container(
              decoration: const BoxDecoration(
                color: ColorConfig.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 0.5.h,
                          width: 20.w,
                          decoration: const BoxDecoration(
                            color: ColorConfig.gray,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          )),
                      SizedBox(height: 4.h),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          _controller.produtDetails.value.title.toString(),
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          _controller.produtDetails.value.price.toString(),
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      ProductRatingView(controller: _controller),
                      SizedBox(height: 4.h),
                      Text(
                        _controller.produtDetails.value.description.toString(),
                        style: const TextStyle(color: ColorConfig.darkgary),
                      ),
                      SizedBox(height: 4.h),
                      const ProductOptions(),
                      SizedBox(height: 4.h),
                      SizedBox(
                        width: double.infinity,
                        height: 8.h,
                        child: Customebutton(
                            callbackFunction: () {},
                            buttontText: Text(
                              "Checkout",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            backgroundColor: ColorConfig.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';

class ProductRatingView extends StatelessWidget {
  final controller;
  const ProductRatingView({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          RatingBar.builder(
            itemSize: 15,
            initialRating: controller.produtDetails.value.rating!,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star_border_outlined,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Text(controller.produtDetails.value.rating.toString()),
          ),
          const Text(
            "(28 Reviews)",
            style: TextStyle(color: ColorConfig.darkgary),
          )
        ],
      ),
    );
  }
}

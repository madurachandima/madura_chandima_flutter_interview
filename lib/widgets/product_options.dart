import 'package:flutter/cupertino.dart';
import 'package:madura_chandima_flutter_interview/configs/color_config.dart';

class ProductOptions extends StatelessWidget {
  const ProductOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: ColorConfig.gray),
              ),
              child: const Icon(CupertinoIcons.eye),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Improved Optics")
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: ColorConfig.gray),
              ),
              child: const Icon(CupertinoIcons.brightness),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Clear Brightness")
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: ColorConfig.gray),
              ),
              child: const Icon(CupertinoIcons.wifi),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Wifi Controllers")
          ],
        ),
      ],
    );
  }
}

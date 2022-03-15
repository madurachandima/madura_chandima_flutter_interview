import 'package:flutter/material.dart';
import 'package:madura_chandima_flutter_interview/widgets/custome_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppbar(),
    );
  }
}

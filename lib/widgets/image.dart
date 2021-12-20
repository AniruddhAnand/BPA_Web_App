import 'package:flutter/material.dart';

class FootPrints extends StatelessWidget {
  const FootPrints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/foots_left.png",
            width: MediaQuery.of(context).size.width / 4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
          ),
          Image.asset(
            "assets/images/foots_right.png",
            width: MediaQuery.of(context).size.width / 4,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemVideoDetailWidget extends StatelessWidget {
  const ItemVideoDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.thumb_down_off_alt_outlined,
          color: Colors.white,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          "58 K",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

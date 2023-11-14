import 'package:flluter_codigo_yuoapp/ui/general/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(children: [
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: kBrandSecondaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                ),
                icon: const Icon(
                  Icons.explore_outlined,
                ),
                label: const Text(
                  "Explorer",
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

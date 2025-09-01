import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 24.0,
        left: 24.0,
        top: 40,
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 18),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
          ),
        ],
      ),
    );
  }
}

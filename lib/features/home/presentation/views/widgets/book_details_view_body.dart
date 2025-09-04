import 'package:bookly/features/home/presentation/views/widgets/custom_book_app_bar_details.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Column(
            children: [
              const CustomBookAppBarDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                child: CustomBookImage(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

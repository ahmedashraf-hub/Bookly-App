import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
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
                padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                child: CustomBookImage(),
              ),
              const SizedBox(height: 43),
              const Text('The Jungle Book', style: Styles.textStyle30),
              const SizedBox(height: 6),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              BookRating(mainAxisAlignment: MainAxisAlignment.center),
            ],
          ),
        ],
      ),
    );
  }
}

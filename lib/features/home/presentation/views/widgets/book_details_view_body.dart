import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_app_bar_details.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Column(
                  children: [
                    const CustomBookAppBarDetails(),
                    BookDetailsSection(),
                    const SizedBox(height: 50),
                    SimilarBooksSection(),
                    const SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:bookly/features/home/presentation/views/widgets/custom_book_app_bar_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Column(children: [const CustomBookAppBarDetails()]),
        ],
      ),
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl:
                'https://www.google.com/imgres?q=image%20to%20text%20flutter&imgurl=https%3A%2F%2Ffiles.codingninjas.in%2Farticle_images%2Fflutter-text-0-1653286480.jpg&imgrefurl=https%3A%2F%2Fwww.naukri.com%2Fcode360%2Flibrary%2Fflutter-text&docid=MkOdpCpiXwfbgM&tbnid=NTSIQ1XMxKMtGM&vet=12ahUKEwiGzvyEhMePAxXsVKQEHUEIEhoQM3oECD8QAA..i&w=1280&h=720&hcb=2&ved=2ahUKEwiGzvyEhMePAxXsVKQEHUEIEhoQM3oECD8QAA',
          ),
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
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: '5',
          count: 250,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}

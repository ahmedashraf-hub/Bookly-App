import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/imgres?q=image%20to%20text%20flutter&imgurl=https%3A%2F%2Ffiles.codingninjas.in%2Farticle_images%2Fflutter-text-0-1653286480.jpg&imgrefurl=https%3A%2F%2Fwww.naukri.com%2Fcode360%2Flibrary%2Fflutter-text&docid=MkOdpCpiXwfbgM&tbnid=NTSIQ1XMxKMtGM&vet=12ahUKEwiGzvyEhMePAxXsVKQEHUEIEhoQM3oECD8QAA..i&w=1280&h=720&hcb=2&ved=2ahUKEwiGzvyEhMePAxXsVKQEHUEIEhoQM3oECD8QAA',
            ),
          );
        },
      ),
    );
  }
}

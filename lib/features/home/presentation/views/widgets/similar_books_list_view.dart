import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicators();
        }
      },
    );
  }
}

import 'package:bookly/features/home/presentation/views/widgets/custom_listl_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custome_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomeAppBar(), FeaturedBoxListView()]);
  }
}

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListViewItem(),
          );
        },
      ),
    );
  }
}

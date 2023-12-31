import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/bestseller_list_view.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import 'custom_appBar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    FeaturedBooksCubit.get(context).fetchFeaturedBooks();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Best Sellers',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/bestseller_list_view.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_appBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers:[

        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListView(),
              SizedBox(height:30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Best Sellers',style: Styles.textStyle18,),
              ),
              SizedBox(height: 20,),
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

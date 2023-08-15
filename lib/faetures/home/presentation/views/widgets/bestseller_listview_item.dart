import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/faetures/home/data/models/book_model.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
 final BookModel bookModel;

  const BestSellerListViewItem({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: CachedNetworkImage(
              imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                     '${ bookModel.volumeInfo.title}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    )),
                const SizedBox(
                  height: 3,
                ),
                 Text(
                  '${ bookModel.volumeInfo.publisher}',
                  style: Styles.textStyle14,
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [

                     const Text(
                     'Free',
                      style: Styles.textStyle14,
                    ),
                    const Spacer(),
                    BookRating(averageRating: bookModel.volumeInfo.averageRating ??0,countRating: bookModel.volumeInfo.ratingsCount??0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

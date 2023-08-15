
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  MainAxisAlignment? mainAxisAlignment;
 final num averageRating;
  final int countRating;
   BookRating({super.key, this.mainAxisAlignment= MainAxisAlignment.start, required this.averageRating, required this.countRating});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:mainAxisAlignment!,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 13,),
        const SizedBox(width:4,),
        Text(averageRating.toString()),
        const SizedBox(width:4,),

         Text('($countRating)'),
      ],
    );
  }
}

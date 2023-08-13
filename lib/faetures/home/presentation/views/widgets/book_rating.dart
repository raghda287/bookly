import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  MainAxisAlignment? mainAxisAlignment;

   BookRating({super.key, this.mainAxisAlignment= MainAxisAlignment.start});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:mainAxisAlignment!,
      children:const [
        Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 13,),
        SizedBox(width:4,),
        Text('4.8',style: Styles.textStyle16,),
        SizedBox(width:4,),

        Text('(2390)'),
      ],
    );
  }
}

import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {Key? key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count})
      : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
        rating.toString()  ,
          style: BooklyStyles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style: BooklyStyles.textStyle14
              .copyWith(color: Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}

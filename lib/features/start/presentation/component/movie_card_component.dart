import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:movie_app/features/start/domain/entities/movie_entity.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/theme/text_style.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class MovieCardComponent extends StatelessWidget {
  MovieCardComponent({Key? key, this.movie}) : super(key: key);
  MovieEntity? movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.red,
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('${movie?.image}'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          RatingBar.builder(
            itemSize: 15,
            // initialRating: (movie?.imDbRating as double)/2,
            initialRating: double.tryParse('${movie?.imDbRating}') ?? 8 / 2,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // print(rating);
            },
            ignoreGestures: true,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${movie?.title}',
            maxLines: 1,
            style: typoRegular18.copyWith(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Text('Crime'),
              const SizedBox(width: 5),
              Text('|'),
              const SizedBox(width: 5),
              Text('${movie?.year}'),
            ],
          ),
        ],
      ),
    );
  }
}

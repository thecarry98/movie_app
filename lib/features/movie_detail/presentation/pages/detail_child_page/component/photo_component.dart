import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../domain/entities/detail/full_movie_detail_entity.dart';

class PhotoComponent extends StatelessWidget {
  PhotoComponent(
      {Key? key,
      this.imageHeight = 80,
      this.imageWidth = 110,
      this.image,
      this.radius = 10})
      : super(key: key);
  double? imageHeight;
  double? imageWidth;
  ItemsImageEntity? image;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight,
      width: imageWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 10),
        ),
        color: Colors.red,
        image: DecorationImage(
          image: NetworkImage(
            '${image?.image}',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

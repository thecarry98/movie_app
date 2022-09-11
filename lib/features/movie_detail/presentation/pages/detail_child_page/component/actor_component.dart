import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/movie_detail/domain/entities/detail/full_movie_detail_entity.dart';
import 'package:movie_app/theme/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../const/resource.dart';

class ActorComponent extends StatelessWidget {
  ActorComponent({Key? key, this.actor, this.radius = 25}) : super(key: key);
  double? radius;
  ActorListEntity? actor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                '${actor?.image}',
              ),
              radius: radius,
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '${actor?.name}',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: typoRegular18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Row(
              children: [
                SvgPicture.asset(R.ASSETS_SVG_GROUP9_9_SVG),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '${actor?.asCharacter}',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(width: 20),
          // const SizedBox(width: 10),
        ],
      ),
    );
  }
}

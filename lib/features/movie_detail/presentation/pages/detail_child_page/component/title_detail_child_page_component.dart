import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:movie_app/theme/text_style.dart';

class TitleDetailChildPageComponent extends StatelessWidget {
  TitleDetailChildPageComponent(
      {Key? key, this.title, this.isViewAll = false, this.fn})
      : super(key: key);
  String? title;
  bool? isViewAll;
  VoidCallback? fn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: typoRegular18.copyWith(
              color: color0f1b2b,
              fontWeight: FontWeight.w800,
            ),
          ),
          isViewAll == true
              ? GestureDetector(
                  onTap: fn,
                  child: Text(
                    'View All',
                    style: typoRegular18.copyWith(
                      color: color47cfff,
                      fontSize: 14,
                    ),
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}

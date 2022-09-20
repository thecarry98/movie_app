import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/gen/colors.dart';
import 'package:movie_app/theme/text_style.dart';

class CommonButton extends StatelessWidget {
  CommonButton(
      {Key? key,
      this.child,
      this.text,
      this.onPressed,
      this.height = 50,
      this.width = double.infinity,
      this.padding = EdgeInsets.zero,
      this.backgroundColor})
      : super(key: key);

  final Widget? child;
  final String? text;
  final Function()? onPressed;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: colore51937,
      ),
      child: CupertinoButton(
        // color: backgroundColor,
        minSize: 0,
        onPressed: onPressed,
        child: child ??
            Text(
              text ?? '',
              style: typoRegular18,
            ),
      ),
    );
  }
}

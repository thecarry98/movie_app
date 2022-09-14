import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/features/gen/colors.dart';

import '../../theme/text_style.dart';

class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    Key? key,
    this.textEditingController,
    this.onEditingComplete,
    this.onChanged,
  }) : super(key: key);
  TextEditingController? textEditingController = TextEditingController();
  // VoidCallback? onChanged;
  // Function? onChanged;
  Function()? onEditingComplete;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      style: typoRegular18.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: colore51937,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Searching',
      ),
      controller: textEditingController,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
    );
  }
}

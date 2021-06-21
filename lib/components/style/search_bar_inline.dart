import 'package:flutter/material.dart';
import 'package:possystem/constants/icons.dart';

class SearchBarInline extends StatelessWidget {
  final String heroTag;
  final String? text;
  final String? errorText;
  final String? hintText;
  final String? helperText;
  final Future<void> Function(BuildContext) onTap;

  const SearchBarInline({
    Key? key,
    required this.heroTag,
    this.text,
    this.errorText,
    this.hintText,
    this.helperText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(text: text);

    return Hero(
      tag: heroTag,
      // transitionOnUserGestures: true,
      child: TextField(
        readOnly: true,
        controller: textController,
        onTap: () => onTap(context),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: hintText,
          helperText: helperText,
          errorText: errorText,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(KIcons.search),
        ),
      ),
    );
  }
}
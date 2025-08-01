import 'package:draftwing/configs/configs.dart';
import 'package:flutter/material.dart';

class CoreHeader extends StatelessWidget {
  const CoreHeader({
    super.key,
    this.leading,
    this.title,
    this.subTitle,
    this.padding,
    this.trailing,
  });

  final Widget? leading;
  final String? title;
  final String? subTitle;
  final EdgeInsets? padding;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Padding(
      padding: padding ?? Space.z,
      child: Row(
        children: [
          if (leading != null) leading!,
          Space.x.t08,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null) AppText.h1(title!),
                if (subTitle != null) AppText.b1(subTitle!),
              ],
            ),
          ),
          if (trailing != null) ...[Space.x.t08, trailing!],
        ],
      ),
    );
  }
}

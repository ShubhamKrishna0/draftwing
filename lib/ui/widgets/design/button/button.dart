import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/providers/app.dart';
import 'package:flutter/material.dart';

part '_enums.dart';
part '_model.dart';
part '_data.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.icon,
    this.label,
    this.frontColor,
    this.labelStyle,
    this.iconToEnd = false,
    required this.onPressed,
    this.disabledCallback,
    this.state = AppButtonState.plain,
    this.style = AppButtonStyle.primary,
    this.radius = AppButtonRadius.medium,
    this.mainAxisSize = MainAxisSize.min,
    this.size = AppButtonSize.large,
    this.body,
    this.padding,
    this.margin,
    this.loading = false,
  });

  final String? label;
  final TextStyle? labelStyle;

  final IconData? icon;
  final bool iconToEnd;
  final Color? frontColor;

  final VoidCallback onPressed;
  final VoidCallback? disabledCallback;
  final MainAxisSize mainAxisSize;

  final Widget? body;

  final AppButtonStyle style;
  final AppButtonState state;
  final AppButtonRadius radius;
  final AppButtonSize size;

  final EdgeInsets? padding;
  final EdgeInsets? margin;

  final bool loading;

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final app = AppProvider.s(context, true);
    final themeMode = app.themeMode;

    var state = this.state;
    if (loading) {
      state = AppButtonState.loading;
    }

    final data = _mapPropsToData()[style]!;
    final borderRadius = _mapRadiusData()[radius];
    final textStyle = _mapSizeToFontSize()[size]!;

    final colors = data.backgroundColor[state]!;
    var textColor = frontColor ?? data.text[state]!;

    final enforceWhiteText =
        themeMode == ThemeMode.dark &&
        style == AppButtonStyle.primary &&
        state != AppButtonState.bordered;

    if (enforceWhiteText) textColor = Colors.white;

    final plain = state == AppButtonState.plain;
    final disabled = state == AppButtonState.disabled || loading;
    final bordered = state == AppButtonState.bordered;

    final iconSize = 1.25 * textStyle.fontSize!;

    var boxShadows = <BoxShadow>[];
    if (!plain && !disabled && !bordered) {
      boxShadows = [
        BoxShadow(
          color:
              colors.isEmpty
                  ? Colors.black.withValues(alpha: 0.1)
                  : colors.first.withValues(alpha: 0.5),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ];
    }

    final hasSmallSize = [
      AppButtonSize.tiny,
      AppButtonSize.mini,
      AppButtonSize.small,
    ].contains(size);

    final verticalSpace = hasSmallSize ? Space.v.t08 : Space.v.t12;

    var padding = this.padding;
    if (mainAxisSize == MainAxisSize.min) {
      padding = (padding ?? Space.h.t16) + verticalSpace;
    } else {
      padding = (padding ?? Space.h.t24) + verticalSpace;
    }

    if (label == null && icon != null) {
      padding = Space.a.t12;
    }

    return InkWell(
      onTap: !disabled ? onPressed : disabledCallback,
      borderRadius: borderRadius,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          border:
              bordered
                  ? Border.all(color: textColor, width: 1)
                  : Border.all(color: Colors.transparent, width: 1),
          color: disabled ? colors.first : null,
          borderRadius: borderRadius,
          boxShadow: boxShadows,
          gradient:
              disabled
                  ? null
                  : LinearGradient(colors: colors, stops: const [0.1, 0.9]),
        ),
        child:
            loading
                ? Center(
                  child: SizedBox(
                    width: SpaceToken.t16,
                    height: SpaceToken.t16,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(textColor),
                      strokeWidth: 2.5,
                      strokeAlign: SpaceToken.t04,
                    ),
                  ),
                )
                : body ??
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: mainAxisSize,
                      children: [
                        if (icon != null && !iconToEnd)
                          Icon(icon, size: iconSize, color: textColor),
                        if (label != null && icon != null) Space.x.t08,
                        if (label != null)
                          AppText.b1(
                            label!,
                            style:
                                labelStyle ??
                                TextStyle(
                                  fontSize: textStyle.fontSize!,
                                  color: textColor,
                                ),
                          ),
                        if (label != null && icon != null && iconToEnd)
                          Space.x.t08,
                        if (icon != null && iconToEnd)
                          Icon(icon, size: iconSize, color: textColor),
                      ],
                    ),
      ),
    );
  }
}

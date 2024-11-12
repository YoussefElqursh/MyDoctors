import 'package:doctorna/core/theme/colors.dart';
import 'package:doctorna/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final String label;
  final WidgetStateProperty<Size?>? minimumSize;
  final WidgetStateProperty<Color?>? backgroundColor;
  final void Function() onPressed;
  final WidgetStateProperty<OutlinedBorder?>? shape;
  final TextStyle? style;
  const BtnWidget({
    super.key,
    required this.label,
    this.minimumSize,
    this.backgroundColor,
    required this.onPressed,
    this.shape,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: backgroundColor ?? WidgetStatePropertyAll(AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: minimumSize ?? WidgetStatePropertyAll(Size(double.infinity, 52),),
        shape: shape ?? WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16),),
          ),
        ),
      ),
      child: Text(
        label,
        style: style ?? TextStyles.font16whiteColorSemiBold,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class ButtonSmall extends StatefulWidget {
  const ButtonSmall({
    required this.context,
    required this.text,
    required this.backgroundColor,
    required this.isEnabled,
    required this.onTap,
    this.icon,
    super.key,
  });

  final BuildContext context;
  final IconData? icon;
  final String text;
  final Color backgroundColor;
  final bool isEnabled;
  final Function(BuildContext) onTap;

  @override
  State<ButtonSmall> createState() => _ButtonSmallState();
}

class _ButtonSmallState extends State<ButtonSmall> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.isEnabled ? widget.onTap(context) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF939393),
              blurRadius: 8,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 0.2),
            ),
          ],
          borderRadius: BorderRadius.circular(4),
          color: widget.isEnabled ? widget.backgroundColor : AppColors.disabledColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icon != null)
              Icon(
                widget.icon,
                color: AppColors.mainWhiteColor,
                size: 16,
              ),
            AppSpacing.horizontalSpacing8,
            Text(
              widget.text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainWhiteColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

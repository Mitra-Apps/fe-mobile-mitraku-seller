import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class ButtonSmall extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isEnabled ? onTap(context) : null,
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
          color: isEnabled ? backgroundColor : AppColors.disabledColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: AppColors.mainWhiteColor,
                size: 16,
              ),
            AppSpacing.horizontalSpacing8,
            Text(
              text,
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

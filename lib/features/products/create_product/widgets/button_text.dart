import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    required this.context,
    required this.text,
    required this.isEnabled,
    required this.onTap,
    this.icon,
    this.textColor,
    this.iconColor,
    super.key,
  });

  final BuildContext context;
  final IconData? icon;
  final String text;
  final bool isEnabled;
  final Function(BuildContext) onTap;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isEnabled ? onTap(context) : null,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: iconColor,
                size: 16,
              ),
            AppSpacing.horizontalSpacing8,
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

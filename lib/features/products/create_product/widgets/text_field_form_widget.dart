import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/generated/fonts.gen.dart';

class TextFieldFormWidget extends StatelessWidget {
  const TextFieldFormWidget({
    required this.title,
    required this.hint,
    required this.onChanged,
    super.key,
  });

  final String title;
  final String hint;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.poppins,
                    ),
              ),
              Text(
                '*',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.dangerColor,
                    ),
              ),
            ],
          ),
          AppSpacing.verticalSpacing8,
          SizedBox(
            height: 40,
            child: TextField(
              onChanged: onChanged,
              style: Theme.of(context).textTheme.bodySmall,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 9,
                  horizontal: 16,
                ),
                filled: true,
                isDense: false,
                hintText: hint,
                hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.disabledColor,
                    ),
                fillColor: AppColors.disabledLightColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

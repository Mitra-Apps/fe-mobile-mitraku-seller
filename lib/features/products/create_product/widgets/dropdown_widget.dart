import 'package:flutter/material.dart';
import 'package:local_database/local_database.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/generated/fonts.gen.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    required this.fieldTitle,
    required this.fieldHint,
    required this.labels,
    required this.onChanged,
    this.selected,
    this.isError = false,
    this.errorText = '',
    super.key,
  });

  final String errorText;
  final bool isError;
  final String fieldTitle;
  final String fieldHint;
  final List<Label> labels;
  final ValueChanged<String?> onChanged;
  final String? selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              fieldTitle,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
        Container(
          height: 40,
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.disabledLightColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButton(
            isExpanded: true,
            value: selected,
            style: Theme.of(context).textTheme.bodySmall,
            onChanged: onChanged,
            underline: const SizedBox(),
            hint: Text(fieldHint),
            items: buildItemList(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            isError ? errorText : '',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: AppColors.dangerColor,
            ),
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> buildItemList(BuildContext context) {
    return labels
        .map(
          (value) => DropdownMenuItem(
            value: value.value,
            child: Text(
              value.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        )
        .toList();
  }
}

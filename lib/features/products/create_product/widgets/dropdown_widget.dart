import 'package:flutter/material.dart';
import 'package:local_database/local_database.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/generated/fonts.gen.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    required this.fieldTitle,
    required this.fieldHint,
    required this.labels,
    required this.callback,
    super.key,
  });

  final String fieldTitle;
  final String fieldHint;
  final List<Label> labels;
  final Function(String) callback;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? selected;

  void onChangedState(String? value) {
    setState(() {
      selected = value;
      widget.callback(value ?? '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Text(
              widget.fieldTitle,
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
            onChanged: onChangedState,
            underline: const SizedBox(),
            hint: Text(widget.fieldHint),
            items: widget.labels
                .map(
                  (value) => DropdownMenuItem(
                    value: value.label,
                    child: Text(
                      value.label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

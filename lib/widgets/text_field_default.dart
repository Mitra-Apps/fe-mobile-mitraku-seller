import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class TextFieldDefault extends StatelessWidget {
  const TextFieldDefault({
    required this.fieldTitle,
    required this.fieldHint,
    required this.fieldInput,
    this.fieldIconName = '',
    this.fieldValidationError = '',
    this.isShowFieldValidationError = false,
    super.key,
  });

  final String fieldTitle;
  final String fieldIconName;
  final String fieldHint;
  final String fieldInput;
  final String fieldValidationError;
  final bool isShowFieldValidationError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        style: Theme.of(context).textTheme.bodySmall,
        inputFormatters: [
          FilteringTextInputFormatter.singleLineFormatter,
        ],
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          filled: true,
          hintText: fieldHint,
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.disabledColor,
              ),
          fillColor: AppColors.disabledLightColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

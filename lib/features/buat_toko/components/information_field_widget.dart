import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/utils/newvalidator.dart';

class BuatTokoFieldWidget extends StatefulWidget {
  const BuatTokoFieldWidget({
    required this.widgetType,
    required this.updateInputValueCallback,
    super.key,
  });
  final String widgetType;
  final Function(String, String) updateInputValueCallback;

  @override
  State<BuatTokoFieldWidget> createState() => _BuatTokoFieldWidgetState();
}

class _TextFormMask {
  _TextFormMask({
    required this.formatter,
    this.validator,
    required this.hint,
    required this.textInputType,
  });
  final TextEditingController textController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;
}

class _BuatTokoFieldWidgetState extends State<BuatTokoFieldWidget> {
  String fieldTitle = '';
  String fieldIconName = '';
  String fieldHint = '';
  String fieldInput = '';
  String fieldValidationError = '';
  bool isShowFieldValidationError = false;
  TextInputType fieldInputType = TextInputType.text;
  List<TextInputFormatter>? fieldInputformatter = [];

  final List<_TextFormMask> phoneMask = [
    _TextFormMask(
        formatter: MaskTextInputFormatter(mask: '62############'),
        hint: 'cth: +62 - 090202020',
        textInputType: TextInputType.phone),
  ];

  void updateValidateInput(String value) {
    setState(() {
      fieldInput = value;
      if (widget.widgetType == 'NO_TELP') {
        isShowFieldValidationError = isShowValidatePhone(fieldInput);
        fieldValidationError = validatePhone(fieldInput);
      }
      if (!isShowFieldValidationError) {
        widget.updateInputValueCallback(
          widget.widgetType,
          fieldInput,
        );
      } else {
        widget.updateInputValueCallback(
          widget.widgetType,
          '',
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    switch (widget.widgetType) {
      case 'NAMA_TOKO':
        fieldTitle = 'Nama Toko';
        fieldIconName = 'assets/icons/icon_toko_profile.svg';
        fieldHint = 'Cth : Toko Sebelah';
        fieldInputType = TextInputType.text;
        fieldInputformatter = [LengthLimitingTextInputFormatter(50)];
      case 'NO_TELP':
        fieldTitle = 'No Telp Toko';
        fieldIconName = 'assets/icons/icon_telephone.svg';
        fieldHint = '+62 - 090202020';
        fieldInputType = TextInputType.phone;
        fieldInputformatter = [
          LengthLimitingTextInputFormatter(14),
          phoneMask[0].formatter,
        ];
      case 'ALAMAT_TOKO':
        fieldTitle = 'Alamat Toko';
        fieldIconName = 'assets/icons/icon_location.svg';
        fieldHint = 'Cth : Jl. Jakarta Raya';
        fieldInputType = TextInputType.streetAddress;
        fieldInputformatter = [LengthLimitingTextInputFormatter(50)];
      case 'DESKRIPSI_TOKO':
        fieldTitle = 'Deskripsi Toko';
        fieldIconName = 'assets/icons/icon_pencil.svg';
        fieldHint = 'Cth : Ini adalah toko obat-obatan herbal';
        fieldInputType = TextInputType.text;
        fieldInputformatter = [LengthLimitingTextInputFormatter(200)];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.verticalSpacing10,
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble),
          child: Row(
            children: [
              Text(
                fieldTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '*',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.dangerColor),
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpacing8,
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble),
          child: Row(
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: SvgPicture.asset(
                  fieldIconName,
                  color: AppColors.mainBlackColor,
                ),
              ),
              AppSpacing.horizontalSpacing10,
              Expanded(
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: AppColors.disabledLightColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimens.basePadding,
                      ),
                      child: Center(
                        child: TextFormField(
                          // validator: widget.validateEmail,
                          onChanged: (value) => {
                            updateValidateInput(value),
                          },
                          keyboardType: fieldInputType,
                          textAlignVertical: TextAlignVertical.center,
                          textInputAction: TextInputAction.next,
                          inputFormatters: fieldInputformatter,
                          style: Theme.of(context).textTheme.bodyMedium,
                          decoration: InputDecoration(
                            hintText: fieldHint,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.disabledColor),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: isShowFieldValidationError,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.basePaddingDouble),
            child: Row(
              children: [
                Text(
                  fieldValidationError,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.dangerColor),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: AppColors.disabledColor,
          thickness: 1,
        ),
      ],
    );
  }
}

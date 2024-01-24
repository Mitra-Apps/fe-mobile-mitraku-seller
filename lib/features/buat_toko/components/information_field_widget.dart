import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class BuatTokoFieldWidget extends StatelessWidget {
  const BuatTokoFieldWidget({
    required this.widgetType,
    required this.updateInputValueCallback,
    super.key,
  });
  final String widgetType;
  final Function(String, String) updateInputValueCallback;

  @override
  Widget build(BuildContext context) {
    String fieldTitle = '';
    String fieldIconName = '';
    String fieldHint = '';
    TextInputType fieldInputType = TextInputType.text;

    switch (widgetType) {
      case 'NAMA_TOKO':
        fieldTitle = 'Nama Toko';
        fieldIconName = 'assets/icons/icon_toko_profile.svg';
        fieldHint = 'Cth : Toko Sebelah';
        fieldInputType = TextInputType.text;
      case 'NO_TELP':
        fieldTitle = 'No Telp Toko';
        fieldIconName = 'assets/icons/icon_telephone.svg';
        fieldHint = '+62 - 090202020';
        fieldInputType = TextInputType.phone;
      case 'ALAMAT_TOKO':
        fieldTitle = 'Alamat Toko';
        fieldIconName = 'assets/icons/icon_location.svg';
        fieldHint = 'Cth : Jl. Jakarta Raya';
        fieldInputType = TextInputType.streetAddress;
      case 'DESKRIPSI_TOKO':
        fieldTitle = 'Deskripsi Toko';
        fieldIconName = 'assets/icons/icon_pencil.svg';
        fieldHint = 'Cth : Ini adalah toko obat-obatan herbal';
        fieldInputType = TextInputType.text;
    }

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
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.basePaddingDouble,
              vertical: AppDimens.basePadding),
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
                          horizontal: AppDimens.basePadding),
                      child: Center(
                        child: TextFormField(
                          // validator: widget.validateEmail,
                          onChanged: (value) =>
                              updateInputValueCallback(widgetType, value),
                          keyboardType: fieldInputType,
                          textAlignVertical: TextAlignVertical.center,
                          textInputAction: TextInputAction.next,
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
              )
            ],
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

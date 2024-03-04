import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class Waktu24hoursWidget extends StatelessWidget {
  const Waktu24hoursWidget({
    super.key,
    this.nameOfDay,
    this.is24HoursOpen = false,
    this.isClosedDay = false,
  });
  final String? nameOfDay;
  final bool is24HoursOpen;
  final bool isClosedDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: AppDimens.basePaddingDouble),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              nameOfDay ?? 'Senin',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          AppSpacing.horizontalSpacing8,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 18,
                  height: 18,
                  child: SvgPicture.asset(
                    'assets/icons/icon_toko_anda.svg',
                    color: is24HoursOpen
                        ? AppColors.successColor
                        : AppColors.dangerColor,
                  ),
                ),
                AppSpacing.horizontalSpacing10,
                Text(
                  is24HoursOpen ? 'Buka 24 Jam' : 'Toko Tutup',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: is24HoursOpen
                          ? AppColors.successColor
                          : AppColors.dangerColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

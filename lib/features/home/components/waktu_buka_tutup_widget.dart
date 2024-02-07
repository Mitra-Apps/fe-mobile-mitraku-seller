import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class WaktuBukaTutupWidget extends StatelessWidget {
  const WaktuBukaTutupWidget({
    super.key,
    this.dayIndex,
    this.openTime,
    this.closeTime,
    this.is24HoursOpen = false,
    this.isClosedDay = false,
  });
  final int? dayIndex;
  final TimeOfDay? openTime;
  final TimeOfDay? closeTime;
  final bool is24HoursOpen;
  final bool isClosedDay;

  String _formatTimeOfDay(TimeOfDay timeOfDay) {
    // Use hour and minute properties to create a formatted string
    // in 24-hour format
    return '${timeOfDay.hour.toString().padLeft(2, '0')}'
        ':${timeOfDay.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    String nameOfDay = '';
    switch (dayIndex) {
      case 0:
        nameOfDay = 'Senin';
      case 1:
        nameOfDay = 'Selasa';
      case 2:
        nameOfDay = 'Rabu';
      case 3:
        nameOfDay = 'Kamis';
      case 4:
        nameOfDay = 'Jumat';
      case 5:
        nameOfDay = 'Sabtu';
      case 6:
        nameOfDay = 'Minggu';
    }

    if (is24HoursOpen || isClosedDay) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimens.basePaddingDouble,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: Text(
                nameOfDay,
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
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimens.basePadding,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: Text(
                nameOfDay,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ),
            AppSpacing.horizontalSpacing8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Waktu Buka',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.disabledColor),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: AppColors.disabledLightColor,
                      child: Padding(
                        padding: const EdgeInsets.all(AppDimens.basePadding),
                        child: Text(
                          openTime == null ? '' : _formatTimeOfDay(openTime!),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.disabledColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            AppSpacing.horizontalSpacing8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Waktu Tutup',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.disabledColor),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: AppColors.disabledLightColor,
                      child: Padding(
                        padding: const EdgeInsets.all(AppDimens.basePadding),
                        child: Text(
                          closeTime == null ? '' : _formatTimeOfDay(closeTime!),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.disabledColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}

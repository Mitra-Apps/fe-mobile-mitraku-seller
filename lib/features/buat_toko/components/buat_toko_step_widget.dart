import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class BuatTokoStepWidget extends StatelessWidget {
  const BuatTokoStepWidget({required this.stepNumber, super.key});
  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.successColor),
              child: Text(
                '1',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainWhiteColor,
                    ),
              ),
            ),
            AppSpacing.verticalSpacing8,
            Text(
              'Informasi Toko',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: AppColors.successColor,
                  ),
            ),
          ],
        ),
        AppSpacing.horizontalSpacing8,
        Container(
            height: 1,
            width: 40,
            color: stepNumber >= 2
                ? AppColors.successColor
                : AppColors.disabledColor),
        AppSpacing.horizontalSpacing8,
        Column(
          children: [
            Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: stepNumber >= 2
                      ? AppColors.successColor
                      : AppColors.disabledColor),
              child: Text(
                '2',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainWhiteColor,
                    ),
              ),
            ),
            AppSpacing.verticalSpacing8,
            Text(
              'Jam Operasional',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: stepNumber >= 2
                        ? AppColors.successColor
                        : AppColors.disabledColor,
                  ),
            ),
          ],
        ),
        AppSpacing.horizontalSpacing8,
        Container(
            height: 1,
            width: 40,
            color: stepNumber >= 3
                ? AppColors.successColor
                : AppColors.disabledColor),
        AppSpacing.horizontalSpacing8,
        Column(
          children: [
            Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: stepNumber >= 3
                      ? AppColors.successColor
                      : AppColors.disabledColor),
              child: Text(
                '3',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainWhiteColor,
                    ),
              ),
            ),
            AppSpacing.verticalSpacing8,
            Text(
              'Detail Toko',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: stepNumber >= 3
                        ? AppColors.successColor
                        : AppColors.disabledColor,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}

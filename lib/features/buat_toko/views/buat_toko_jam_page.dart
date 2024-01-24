import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/components/jam_operasional_widget.dart';
import 'package:mitraku_seller/features/buat_toko/components/buat_toko_step_widget.dart';

class BuatTokoJamPage extends StatefulWidget {
  const BuatTokoJamPage({required this.changeCreateStoreStep, super.key});
  final Function(int) changeCreateStoreStep;

  @override
  State<BuatTokoJamPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<BuatTokoJamPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpacing.verticalSpacing20,
          const BuatTokoStepWidget(stepNumber: 2),
          AppSpacing.verticalSpacing20,
          const BuatTokoJamWidget(
            dayTitle: 'Senin',
          ),
          const BuatTokoJamWidget(
            dayTitle: 'Selasa',
          ),
          const BuatTokoJamWidget(
            dayTitle: 'Rabu',
          ),
          const BuatTokoJamWidget(
            dayTitle: 'Kamis',
          ),
          const BuatTokoJamWidget(
            dayTitle: 'Jumat',
          ),
          const BuatTokoJamWidget(
            dayTitle: 'Sabtu',
          ),
          const BuatTokoJamWidget(
            dayTitle: 'Minggu',
          ),
          AppSpacing.verticalSpacing20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.mainWhiteColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  widget.changeCreateStoreStep(1);
                },
                child: Text(
                  'Kembali',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.dangerColor,
                      ),
                ),
              ),
              AppSpacing.horizontalSpacing20,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  widget.changeCreateStoreStep(3);
                },
                child: Text(
                  'Berikutnya',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainWhiteColor,
                      ),
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpacing20,
        ],
      ),
    );
  }
}

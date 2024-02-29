import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/home/components/deskripsi_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/profil_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/waktu_operasional_widget.dart';

class DetailTokoAndaWidget extends StatelessWidget {
  const DetailTokoAndaWidget({
    required this.state,
    required this.onEditStoreCallback,
  });
  final StoreModel state;
  final Function() onEditStoreCallback;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilTokoWidget(
            imagePath: state.imagePath,
            name: state.name,
            phone: state.phone,
            address: state.address,
          ),
          Divider(
            color: AppColors.disabledColor,
            thickness: 1,
          ),
          DeskripsiTokoWidget(
            desciption: state.description,
          ),
          Divider(
            color: AppColors.disabledColor,
            thickness: 1,
          ),
          WaktuOperasionalWidget(
            isOpen24HoursWeekly: state.scheduleModel!.isOpen24HoursWeekly,
            isClosedDayWeekly: state.scheduleModel!.isClosedDayWeekly,
            timeOpenWeekly: state.scheduleModel!.timeOpenWeekly,
            timeClosedWeekly: state.scheduleModel!.timeClosedWeekly,
          ),
          Padding(
            padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                    AppDimens.basePaddingHalf,
                  ),
                  backgroundColor: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: onEditStoreCallback,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: SvgPicture.asset(
                        'assets/icons/icon_edit.svg',
                        color: AppColors.mainWhiteColor,
                      ),
                    ),
                    AppSpacing.horizontalSpacing10,
                    Text(
                      'Ubah Toko',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainWhiteColor),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/buat_toko/components/buat_toko_step_widget.dart';
import 'package:mitraku_seller/features/home/components/deskripsi_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/profil_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/waktu_operasional_widget.dart';

class BuatTokoDetailPage extends StatefulWidget {
  const BuatTokoDetailPage({required this.changeCreateStoreStep, super.key});
  final Function(int) changeCreateStoreStep;

  @override
  State<BuatTokoDetailPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<BuatTokoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuatTokoCubit, StoreModel>(
      builder: (BuildContext context, StoreModel state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.verticalSpacing20,
              const BuatTokoStepWidget(stepNumber: 3),
              ProfilTokoWidget(
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
              const WaktuOperasionalWidget(),
              Padding(
                padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding:
                              const EdgeInsets.all(AppDimens.basePaddingDouble),
                          elevation: 0,
                          backgroundColor: AppColors.mainWhiteColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          widget.changeCreateStoreStep(2);
                        },
                        child: Text(
                          'Kembali',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.dangerColor,
                                  ),
                        ),
                      ),
                      AppSpacing.horizontalSpacing20,
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding:
                              const EdgeInsets.all(AppDimens.basePaddingDouble),
                          backgroundColor: AppColors.mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          widget.changeCreateStoreStep(200);
                        },
                        child: Text(
                          'Buat Toko',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainWhiteColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

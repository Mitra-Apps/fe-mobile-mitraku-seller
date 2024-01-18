import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/app/bloc/app_bloc.dart';
import 'package:mitraku_seller/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LainnyaPage extends StatelessWidget {
  const LainnyaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.dashboardScaffoldKey),
      appBar: AppBar(
          title: Text(
        'Lainnya',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: SvgPicture.asset(
                  'assets/icons/icon_lainnya.svg',
                  color: AppColors.mainBlackColor,
                ),
              ),
              AppSpacing.horizontalSpacing10,
              Expanded(
                child: Text(
                  'Kelola Akun',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlackColor,
                      ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.disabledColor,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: SvgPicture.asset(
                  'assets/icons/icon_notifikasi.svg',
                  color: AppColors.mainBlackColor,
                ),
              ),
              AppSpacing.horizontalSpacing10,
              Expanded(
                child: Text(
                  'Notifikasi',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlackColor,
                      ),
                ),
              ),
              Container(
                height: 26,
                width: 26,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.dangerColor),
                child: Text(
                  '1',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainWhiteColor,
                      ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.disabledColor,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: SvgPicture.asset(
                  'assets/icons/icon_pesan.svg',
                  color: AppColors.mainBlackColor,
                ),
              ),
              AppSpacing.horizontalSpacing10,
              Expanded(
                child: Text(
                  'Pesan',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlackColor,
                      ),
                ),
              ),
              Container(
                height: 26,
                width: 26,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.dangerColor),
                child: Text(
                  '1',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainWhiteColor,
                      ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.disabledColor,
          thickness: 1,
        ),
        MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            context.read<AppBloc>().add(const AppEvent.enableFirstUse());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                SizedBox(
                  width: 18,
                  height: 18,
                  child: SvgPicture.asset(
                    'assets/icons/icon_keluar.svg',
                    color: AppColors.dangerColor,
                  ),
                ),
                AppSpacing.horizontalSpacing10,
                Expanded(
                  child: Text(
                    'Keluar',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.dangerColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

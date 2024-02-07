import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/buat_toko/views/buat_toko_detail_page.dart';
import 'package:mitraku_seller/features/buat_toko/views/buat_toko_informasi_page.dart';
import 'package:mitraku_seller/features/buat_toko/views/buat_toko_jam_page.dart';

class BuatTokoPage extends StatefulWidget {
  const BuatTokoPage({
    required this.cancelCreateStoreCallback,
    required this.successCreateStoreCallback,
    super.key,
  });
  final VoidCallback cancelCreateStoreCallback;
  final VoidCallback successCreateStoreCallback;

  @override
  State<BuatTokoPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<BuatTokoPage> {
  int currentBuatTokoStep = 1;

  void _changeBuatTokoStepCallback(int buatTokoStep) {
    setState(() {
      if (buatTokoStep == 0) {
        widget.cancelCreateStoreCallback();
      } else if (buatTokoStep == 200) {
        widget.successCreateStoreCallback();
      } else {
        currentBuatTokoStep = buatTokoStep;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BuatTokoCubit(),
      child: Scaffold(
        backgroundColor: AppColors.mainWhiteColor,
        key: const Key(WidgetKeys.tokoAndaScaffoldKey),
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.mainWhiteColor,
                  ),
                  onPressed: () {
                    widget.cancelCreateStoreCallback();
                  },
                  child: SvgPicture.asset(
                    'assets/icons/icon_arrow_left.svg',
                    color: AppColors.mainBlackColor,
                  ),
                ),
              ),
              AppSpacing.horizontalSpacing10,
              Text(
                'Toko Anda',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: switch (currentBuatTokoStep) {
          1 => BuatTokoInformasiPage(
              changeCreateStoreStep: _changeBuatTokoStepCallback,
            ),
          2 => BuatTokoJamPage(
              changeCreateStoreStep: _changeBuatTokoStepCallback,
            ),
          3 => BuatTokoDetailPage(
              changeCreateStoreStep: _changeBuatTokoStepCallback,
            ),
          // TODO: Handle this case.
          int() => null,
        },
      ),
    );
  }
}

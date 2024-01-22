import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/home/widgets/buat_toko_field_widget.dart';
import 'package:mitraku_seller/features/home/widgets/buat_toko_step_widget.dart';
import 'package:mitraku_seller/features/home/widgets/buat_toko_unggah_foto_widget.dart';

class BuatTokoPage extends StatefulWidget {
  const BuatTokoPage({super.key});

  @override
  State<BuatTokoPage> createState() => _BuatTokoPage();
}

class _BuatTokoPage extends State<BuatTokoPage> {
  bool isStoreCreated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.tokoAndaScaffoldKey),
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 18,
              height: 18,
              child: SvgPicture.asset(
                'assets/icons/icon_arrow_left.svg',
                color: AppColors.mainBlackColor,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.verticalSpacing20,
            BuatTokoStepWidget(),
            AppSpacing.verticalSpacing20,
            BuatTokoFieldWidget(
              widgetType: 'NAMA_TOKO',
            ),
            BuatTokoFieldWidget(
              widgetType: 'NO_TELP',
            ),
            BuatTokoFieldWidget(
              widgetType: 'ALAMAT_TOKO',
            ),
            BuatTokoFieldWidget(
              widgetType: 'DESKRIPSI_TOKO',
            ),
            BuatTokoUnggahFotoWidget(),
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
                  onPressed: () {},
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
                    backgroundColor: AppColors.disabledLightColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Berikutnya',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.disabledColor,
                        ),
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing20,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/home/view/buat_toko_page.dart';
import 'package:mitraku_seller/features/home/widgets/deskripsi_toko_widget.dart';
import 'package:mitraku_seller/features/home/widgets/profil_toko_widget.dart';
import 'package:mitraku_seller/features/home/widgets/waktu_operasional_widget.dart';

class TokoAndaPage extends StatefulWidget {
  const TokoAndaPage({super.key});

  @override
  State<TokoAndaPage> createState() => _TokoAndaPage();
}

class _TokoAndaPage extends State<TokoAndaPage> {
  bool isCreateEditStore = false;
  bool isStoreCreated = false;

  @override
  Widget build(BuildContext context) {
    if (isCreateEditStore) {
      return const BuatTokoPage();
    } else {
      return Scaffold(
        backgroundColor: AppColors.mainWhiteColor,
        key: const Key(WidgetKeys.tokoAndaScaffoldKey),
        appBar: AppBar(
          title: Text(
            'Toko Anda',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: !isStoreCreated
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 180,
                      child: Image.asset(
                        'assets/images/toko_anda_silahkan_buat.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      'Silakan Buat Toko Anda',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.disabledColor),
                    ),
                    AppSpacing.verticalSpacing16,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.warningColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        setState(() {
                          isCreateEditStore = true;
                        });
                        // context.push(AppRouter.imagesFromDbPath);
                      },
                      child: Text(
                        'Buat Toko',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainWhiteColor,
                                ),
                      ),
                    )
                  ],
                ),
              )
            : SingleChildScrollView(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfilTokoWidget(),
                  Divider(
                    color: AppColors.disabledColor,
                    thickness: 1,
                  ),
                  const DeskripsiTokoWidget(),
                  Divider(
                    color: AppColors.disabledColor,
                    thickness: 1,
                  ),
                  const WaktuOperasionalWidget(),
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.basePaddingDouble),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          setState(() {
                            isStoreCreated = true;
                          });
                          // context.push(AppRouter.imagesFromDbPath);
                        },
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
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainWhiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
      );
    }
  }
}

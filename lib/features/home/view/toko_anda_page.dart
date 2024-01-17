import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/app/bloc/app_bloc.dart';
import 'package:mitraku_seller/features/home/widgets/deskripsi_toko_widget.dart';
import 'package:mitraku_seller/features/home/widgets/profil_toko_widget.dart';
import 'package:mitraku_seller/features/home/widgets/waktu_operasional_widget.dart';
import 'package:mitraku_seller/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TokoAndaPage extends StatefulWidget {
  const TokoAndaPage({super.key});

  @override
  State<TokoAndaPage> createState() => _TokoAndaPage();
}

class _TokoAndaPage extends State<TokoAndaPage> {
  bool isStoreCreated = false;

  @override
  Widget build(BuildContext context) {
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
                    'Silahkan Buat Toko Anda',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.disabledColor),
                  ),
                  AppSpacing.verticalSpacing16,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.warningColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      setState(() {
                        isStoreCreated = true;
                      });
                      // context.push(AppRouter.imagesFromDbPath);
                    },
                    child: Text(
                      'Buat Toko',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        setState(() {
                          isStoreCreated = true;
                        });
                        // context.push(AppRouter.imagesFromDbPath);
                      },
                      child: Text(
                        'Ubah Toko',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainWhiteColor,
                                ),
                      ),
                    ),
                  ),
                )
              ],
            )),
    );
  }
}

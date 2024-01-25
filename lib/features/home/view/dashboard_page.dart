import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.dashboardScaffoldKey),
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.disabledColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppSpacing.horizontalSpacing10,
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 120,
                          height: 120,
                          child: Image.asset(
                            'assets/images/dashboard_data_transaksi.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      AppSpacing.horizontalSpacing10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data Transaksi',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainBlackColor,
                                  ),
                            ),
                            Text(
                              'Total Pendapatan : Rp. 00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.disabledColor,
                                  ),
                            ),
                            AppSpacing.verticalSpacing20,
                            Text(
                              'Lihat Selengkapnya >',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainColor,
                                  ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                AppSpacing.verticalSpacing12,
                DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.disabledColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppSpacing.horizontalSpacing10,
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Image.asset(
                              'assets/images/dashboard_toko_belum_tersedia.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Toko Belum Tersedia',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainBlackColor,
                                    ),
                              ),
                              Text(
                                'Anda Belum Memiliki Toko',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.disabledColor,
                                    ),
                              ),
                              AppSpacing.verticalSpacing20,
                              Text(
                                'Buat Toko >',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.warningColor,
                                    ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                AppSpacing.verticalSpacing12,
                DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.disabledColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppSpacing.horizontalSpacing10,
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: 120,
                            height: 120,
                            child: Image.asset(
                              'assets/images/dashboard_kategori_produk.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kategori Produk',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainBlackColor,
                                    ),
                              ),
                              Text(
                                'Anda Belum Memiliki Kategori',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.disabledColor,
                                    ),
                              ),
                              AppSpacing.verticalSpacing20,
                              Text(
                                'Kelola Kategori >',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.warningColor,
                                    ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ]),
        ),
      ),
    );
  }
}

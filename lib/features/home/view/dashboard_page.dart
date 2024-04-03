import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';
import 'package:mitraku_seller/features/stores/components/your_store_loading_widget.dart';
import 'package:mitraku_seller/injector/injector.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    required this.changeNavigationBarCallback,
    super.key,
  });
  final Function(int) changeNavigationBarCallback;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isStoreExist = false;
  bool isLoadingApi = true;

  void _changeLoadingStatusCallback(bool loading) {
    setState(() {
      isLoadingApi = loading;
    });
  }

  void _loadTokoAndaResponse(YourStoreState state) {
    setState(() {
      isLoadingApi = false;
      if (state.myStoreResponse == null) {
        isStoreExist = false;
      } else {
        isStoreExist = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<YourStoreBloc>(
      create: (context) => Injector.instance<YourStoreBloc>(),
      child: BlocConsumer<YourStoreBloc, YourStoreState>(
        listener: (context, state) async {
          state.notification?.when(
            notifySuccess: (message) {
              _loadTokoAndaResponse(state);
              // _showToastSuccess(message);
            },
            notifyFailed: (message) {
              _loadTokoAndaResponse(state);
              // _showToastSuccess(message);
            },
          );
        },
        builder: (builderContext, yourStoreState) {
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
              automaticallyImplyLeading: false,
            ),
            body: isLoadingApi
                ? YourStoreLoadingWidget(
                    onChangeLoadingStatusCallback: _changeLoadingStatusCallback,
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: AppColors.disabledColor),
                            ),
                            child: Row(
                              children: [
                                AppSpacing.horizontalSpacing10,
                                Padding(
                                  padding: const EdgeInsets.all(10),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        'Total pendapatan : Rp. 00',
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppSpacing.verticalSpacing12,
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: AppColors.disabledColor),
                            ),
                            child: Row(
                              children: [
                                AppSpacing.horizontalSpacing10,
                                Padding(
                                  padding: const EdgeInsets.all(10),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        !isStoreExist
                                            ? 'Toko Belum Tersedia'
                                            : 'Toko Tersedia',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.mainBlackColor,
                                            ),
                                      ),
                                      Text(
                                        !isStoreExist
                                            ? 'Anda belum memiliki toko'
                                            : 'Anda sudah memiliki toko',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: !isStoreExist
                                                  ? AppColors.disabledColor
                                                  : AppColors.successColor,
                                            ),
                                      ),
                                      AppSpacing.verticalSpacing20,
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          elevation: 0,
                                          backgroundColor:
                                              AppColors.mainWhiteColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        onPressed: () {
                                          widget.changeNavigationBarCallback(1);
                                        },
                                        child: Text(
                                          !isStoreExist
                                              ? 'Buat Toko >'
                                              : 'Lihat Toko >',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: !isStoreExist
                                                    ? AppColors.warningColor
                                                    : AppColors.successColor,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppSpacing.verticalSpacing12,
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: AppColors.disabledColor),
                            ),
                            child: Row(
                              children: [
                                AppSpacing.horizontalSpacing10,
                                Padding(
                                  padding: const EdgeInsets.all(10),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        'Anda belum memiliki kategori',
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}

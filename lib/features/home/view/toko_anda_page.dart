import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/buat_toko/buat_toko_page.dart';
import 'package:mitraku_seller/features/home/components/deskripsi_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/profil_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/waktu_operasional_widget.dart';

class TokoAndaPage extends StatefulWidget {
  const TokoAndaPage({super.key});

  @override
  State<TokoAndaPage> createState() => _TokoAndaPage();
}

class _TokoAndaPage extends State<TokoAndaPage> {
  bool isCreateStoreMode = false;
  bool isStoreExist = false;

  void _cancelCreateStoreCallback() {
    setState(() {
      isCreateStoreMode = false;
    });
  }

  void _successCreateStoreCallback() {
    setState(() {
      isCreateStoreMode = false;
      isStoreExist = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BuatTokoCubit(),
      child: isCreateStoreMode
          ? BuatTokoPage(
              cancelCreateStoreCallback: _cancelCreateStoreCallback,
              successCreateStoreCallback: _successCreateStoreCallback,
            )
          : BlocBuilder<BuatTokoCubit, StoreModel>(
              builder: (BuildContext context, StoreModel state) {
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
                    automaticallyImplyLeading: false,
                  ),
                  body: !isStoreExist
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
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.disabledColor),
                              ),
                              AppSpacing.verticalSpacing16,
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(
                                      AppDimens.basePaddingHalf),
                                  backgroundColor: AppColors.warningColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                onPressed: () {
                                  setState(() {
                                    isCreateStoreMode = true;
                                  });
                                  // context.push(AppRouter.imagesFromDbPath);
                                },
                                child: Text(
                                  'Buat Toko',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
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
                                isOpen24HoursWeekly:
                                    state.scheduleModel!.isOpen24HoursWeekly,
                                isClosedDayWeekly:
                                    state.scheduleModel!.isClosedDayWeekly,
                                timeOpenWeekly:
                                    state.scheduleModel!.timeOpenWeekly,
                                timeClosedWeekly:
                                    state.scheduleModel!.timeClosedWeekly,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(
                                    AppDimens.basePaddingDouble),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(
                                        AppDimens.basePaddingHalf,
                                      ),
                                      backgroundColor: AppColors.mainColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isCreateStoreMode = true;
                                      });
                                      // context.push(AppRouter.imagesFromDbPath);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                  color:
                                                      AppColors.mainWhiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                );
              },
            ),
    );

    // if (isCreateStoreMode) {
    //   return BuatTokoPage(
    //     cancelCreateStoreCallback: _cancelCreateStoreCallback,
    //     successCreateStoreCallback: _successCreateStoreCallback,
    //   );
    // } else {
    // return Scaffold(
    //   backgroundColor: AppColors.mainWhiteColor,
    //   key: const Key(WidgetKeys.tokoAndaScaffoldKey),
    //   appBar: AppBar(
    //     title: Text(
    //       'Toko Anda',
    //       style: Theme.of(context)
    //           .textTheme
    //           .titleLarge!
    //           .copyWith(fontWeight: FontWeight.bold),
    //     ),
    //     automaticallyImplyLeading: false,
    //   ),
    //   body: !isStoreExist
    //       ? Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 width: 140,
    //                 height: 180,
    //                 child: Image.asset(
    //                   'assets/images/toko_anda_silahkan_buat.png',
    //                   fit: BoxFit.contain,
    //                 ),
    //               ),
    //               Text(
    //                 'Silakan Buat Toko Anda',
    //                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
    //                     fontWeight: FontWeight.bold,
    //                     color: AppColors.disabledColor),
    //               ),
    //               AppSpacing.verticalSpacing16,
    //               ElevatedButton(
    //                 style: ElevatedButton.styleFrom(
    //                   padding:
    //                       const EdgeInsets.all(AppDimens.basePaddingHalf),
    //                   backgroundColor: AppColors.warningColor,
    //                   shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(10)),
    //                 ),
    //                 onPressed: () {
    //                   setState(() {
    //                     isCreateStoreMode = true;
    //                   });
    //                   // context.push(AppRouter.imagesFromDbPath);
    //                 },
    //                 child: Text(
    //                   'Buat Toko',
    //                   style:
    //                       Theme.of(context).textTheme.titleMedium!.copyWith(
    //                             fontWeight: FontWeight.bold,
    //                             color: AppColors.mainWhiteColor,
    //                           ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         )
    //       : SingleChildScrollView(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               const ProfilTokoWidget(),
    //               Divider(
    //                 color: AppColors.disabledColor,
    //                 thickness: 1,
    //               ),
    //               const DeskripsiTokoWidget(),
    //               Divider(
    //                 color: AppColors.disabledColor,
    //                 thickness: 1,
    //               ),
    //               const WaktuOperasionalWidget(),
    //               Padding(
    //                 padding:
    //                     const EdgeInsets.all(AppDimens.basePaddingDouble),
    //                 child: SizedBox(
    //                   width: double.infinity,
    //                   child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                       padding: const EdgeInsets.all(
    //                         AppDimens.basePaddingHalf,
    //                       ),
    //                       backgroundColor: AppColors.mainColor,
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(10)),
    //                     ),
    //                     onPressed: () {
    //                       setState(() {
    //                         isCreateStoreMode = true;
    //                       });
    //                       // context.push(AppRouter.imagesFromDbPath);
    //                     },
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         SizedBox(
    //                           width: 18,
    //                           height: 18,
    //                           child: SvgPicture.asset(
    //                             'assets/icons/icon_edit.svg',
    //                             color: AppColors.mainWhiteColor,
    //                           ),
    //                         ),
    //                         AppSpacing.horizontalSpacing10,
    //                         Text(
    //                           'Ubah Toko',
    //                           style: Theme.of(context)
    //                               .textTheme
    //                               .titleMedium!
    //                               .copyWith(
    //                                   fontWeight: FontWeight.bold,
    //                                   color: AppColors.mainWhiteColor),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    // );
    // }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/buat_toko/buat_toko_page.dart';
import 'package:mitraku_seller/features/home/bloc/toko_anda_bloc.dart';
import 'package:mitraku_seller/features/home/components/deskripsi_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/profil_toko_widget.dart';
import 'package:mitraku_seller/features/home/components/waktu_operasional_widget.dart';

import '../../../injector/injector.dart';

class TokoAndaPage extends StatefulWidget {
  const TokoAndaPage({super.key});

  @override
  State<TokoAndaPage> createState() => _TokoAndaPage();
}

class _TokoAndaPage extends State<TokoAndaPage> {
  bool isCreateStoreMode = false;
  bool isStoreExist = false;

  void _createEditStoreCallback() {
    setState(() {
      isCreateStoreMode = true;
    });
  }

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

  // @override
  // void didChangeDependencies() {
  //   context.read<TokoAndaBloc>().add(
  //         const TokoAndaEvent.myStoreGetRequested(),
  //       );
  //   //do whatever you want with the bloc here.
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BuatTokoCubit>(
          create: (context) => BuatTokoCubit(),
        ),
        BlocProvider<TokoAndaBloc>(
          create: (context) => Injector.instance<TokoAndaBloc>(),
        ),
      ],
      child: isCreateStoreMode
          ? BuatTokoPage(
              cancelCreateStoreCallback: _cancelCreateStoreCallback,
              successCreateStoreCallback: _successCreateStoreCallback,
            )
          : BlocConsumer<BuatTokoCubit, StoreModel>(
              // listenWhen: (prev, next) =>
              //     prev.notification != next.notification,
              listener: (context, state) async {
                // state.notification?.when(
                //   notifySuccess: (message) {
                //     _showToastSuccess(message);
                //   },
                //   notifyFailed: (message) {
                //     _showToastFailed(message);
                //   },
                // );

                // if (state.loginBadRequest == 'AUTH_LOGIN_USER_UNVERIFIED') {
                //   await context.push(AppRouter.otpPath);
                // }
                // if (state.loginSuccess == 'SUCCESSLOGIN') {
                //   await context.push(AppRouter.homePath);
                // }
              },
              builder: (BuildContext context, StoreModel state) {
                return BlocConsumer<TokoAndaBloc, TokoAndaState>(
                  builder: (context, tokoAndaState) {
                    // Build UI based on both BuatTokoCubit and TokoAndaBloc states
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
                          ? _EmptyStoreWidgets(
                              onCreateStoreCallback: _createEditStoreCallback,
                            )
                          : _ExistingStoreWidgets(
                              state: state,
                              onEditStoreCallback: _createEditStoreCallback,
                            ),
                    );
                  },
                  listener: (context, tokoAndaState) {
                    // Perform side effects or handle events from TokoAndaBloc
                  },
                );
              },
            ),
    );
  }
}

class _EmptyStoreWidgets extends StatelessWidget {
  const _EmptyStoreWidgets({required this.onCreateStoreCallback});
  final Function() onCreateStoreCallback;

  @override
  Widget build(BuildContext context) {
    return Center(
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
                fontWeight: FontWeight.bold, color: AppColors.disabledColor),
          ),
          AppSpacing.verticalSpacing16,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(AppDimens.basePaddingHalf),
              backgroundColor: AppColors.warningColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            // onPressed: () {
            //   context.read<TokoAndaBloc>().add(
            //         const TokoAndaEvent.myStoreGetRequested(),
            //       );
            // },
            onPressed: onCreateStoreCallback,
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
    );
  }
}

class _ExistingStoreWidgets extends StatelessWidget {
  const _ExistingStoreWidgets({
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

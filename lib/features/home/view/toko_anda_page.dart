import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_cubit.dart';
import 'package:mitraku_seller/features/buat_toko/buat_toko_page.dart';
import 'package:mitraku_seller/features/home/bloc/toko_anda_bloc.dart';
import 'package:mitraku_seller/features/home/components/detail_toko_anda_widget.dart';
import 'package:mitraku_seller/features/home/components/memuat_toko_anda_widget.dart';
import 'package:mitraku_seller/features/home/components/silakan_buat_toko_widget.dart';

import 'package:mitraku_seller/injector/injector.dart';

class TokoAndaPage extends StatefulWidget {
  const TokoAndaPage({super.key});

  @override
  State<TokoAndaPage> createState() => _TokoAndaPage();
}

class _TokoAndaPage extends State<TokoAndaPage> {
  bool isCreateEditStoreMode = false;
  bool isStoreExist = false;
  bool isLoadingApi = false;

  void _createEditStoreCallback() {
    setState(() {
      isCreateEditStoreMode = true;
    });
  }

  void _cancelCreateStoreCallback() {
    setState(() {
      isCreateEditStoreMode = false;
    });
  }

  void _successCreateStoreCallback() {
    setState(() {
      isCreateEditStoreMode = false;
      isStoreExist = true;
    });
  }

  void _changeLoadingStatusCallback(bool loading) {
    setState(() {
      isLoadingApi = loading;
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
      child: isCreateEditStoreMode
          ? BuatTokoPage(
              cancelCreateStoreCallback: _cancelCreateStoreCallback,
              successCreateStoreCallback: _successCreateStoreCallback,
            )
          : BlocConsumer<BuatTokoCubit, StoreModel>(
              // listenWhen: (prev, next) =>
              //     prev.notification != next.notification,
              listener: (context, state) async {
                _changeLoadingStatusCallback(false);
                print('DAFUQ');
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
                      body: isLoadingApi
                          ? MemuatTokoAndaWidget(
                              onChangeLoadingStatusCallback:
                                  _changeLoadingStatusCallback)
                          : !isStoreExist
                              ? SilakanBuatTokoWidget(
                                  onCreateStoreCallback:
                                      _createEditStoreCallback,
                                )
                              : DetailTokoAndaWidget(
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_store_cubit.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';
import 'package:mitraku_seller/features/stores/components/your_store_loading_widget.dart';
import 'package:mitraku_seller/features/stores/components/your_store_please_create_widget.dart';
import 'package:mitraku_seller/features/stores/components/your_store_summary_widget.dart';
import 'package:mitraku_seller/features/stores/create_store_page.dart';
import 'package:mitraku_seller/injector/injector.dart';

class YourStorePage extends StatefulWidget {
  const YourStorePage({super.key});

  @override
  State<YourStorePage> createState() => _TokoAndaPage();
}

class _TokoAndaPage extends State<YourStorePage> {
  bool isCreateEditStoreMode = false;
  bool isStoreExist = false;
  bool isLoadingApi = true;

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
      isStoreExist = false;
      isLoadingApi = true;
    });
  }

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreateStoreCubit>(
          create: (context) => CreateStoreCubit(),
        ),
        BlocProvider<YourStoreBloc>(
          create: (context) => Injector.instance<YourStoreBloc>(),
        ),
      ],
      child: isCreateEditStoreMode
          ? CreateStorePage(
              cancelCreateStoreCallback: _cancelCreateStoreCallback,
              successCreateStoreCallback: _successCreateStoreCallback,
            )
          : BlocConsumer<CreateStoreCubit, StoreModel>(
              // listenWhen: (prev, next) =>
              //     prev.notification != next.notification,
              listener: (context, state) async {},
              builder: (BuildContext context, StoreModel state) {
                return BlocConsumer<YourStoreBloc, YourStoreState>(
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

                    // if (state.loginBadRequest == 'AUTH_LOGIN_USER_UNVERIFIED') {
                    //   await context.push(AppRouter.otpPath);
                    // }
                    // if (state.loginSuccess == 'SUCCESSLOGIN') {
                    //   await context.push(AppRouter.homePath);
                    // }
                  },
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
                          ? YourStoreLoadingWidget(
                              onChangeLoadingStatusCallback:
                                  _changeLoadingStatusCallback)
                          : !isStoreExist
                              ? YourStorePleaseCreateWidget(
                                  onCreateStoreCallback:
                                      _createEditStoreCallback,
                                )
                              : YourStoreSummaryWidget(
                                  state: tokoAndaState.myStoreResponse!,
                                  defaultState: state,
                                  onEditStoreCallback: _createEditStoreCallback,
                                ),
                    );
                  },
                );
              },
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/stores/bloc/create_edit_store_cubit.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';
import 'package:mitraku_seller/features/stores/components/your_store_loading_widget.dart';
import 'package:mitraku_seller/features/stores/components/your_store_please_create_widget.dart';
import 'package:mitraku_seller/features/stores/components/your_store_summary_widget.dart';
import 'package:mitraku_seller/features/stores/create_store_page.dart';
import 'package:mitraku_seller/features/stores/edit_store_page.dart';
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
        BlocProvider<CreateEditStoreCubit>(
          create: (context) => CreateEditStoreCubit(),
        ),
        BlocProvider<YourStoreBloc>(
          create: (context) => Injector.instance<YourStoreBloc>(),
        ),
      ],
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
          return isCreateEditStoreMode
              ? yourStoreState.myStoreResponse == null
                  ? CreateStorePage(
                      cancelCreateStoreCallback: _cancelCreateStoreCallback,
                      successCreateStoreCallback: _successCreateStoreCallback,
                    )
                  : EditStorePage(
                      cancelCreateStoreCallback: _cancelCreateStoreCallback,
                      successCreateStoreCallback: _successCreateStoreCallback,
                    )
              : Scaffold(
                  backgroundColor: AppColors.mainWhiteColor,
                  key: const Key(WidgetKeys.tokoAndaScaffoldKey),
                  appBar: AppBar(
                    title: Text(
                      'Toko Anda',
                      style: Theme.of(builderContext)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    automaticallyImplyLeading: false,
                  ),
                  body: isLoadingApi
                      ? YourStoreLoadingWidget(
                          onChangeLoadingStatusCallback:
                              _changeLoadingStatusCallback,
                        )
                      : !isStoreExist
                          ? YourStorePleaseCreateWidget(
                              onCreateStoreCallback: _createEditStoreCallback,
                            )
                          : YourStoreSummaryWidget(
                              state: yourStoreState.myStoreResponse!,
                              defaultState: StoreModel.defaultStore(),
                              onEditStoreCallback: _createEditStoreCallback,
                            ),
                );
        },
      ),
    );
  }
}

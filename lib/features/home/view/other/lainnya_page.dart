import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/app/bloc/app_bloc.dart';
import 'package:mitraku_seller/features/home/view/other/bloc/other_bloc.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/router/app_router.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LainnyaPage extends StatefulWidget {
  const LainnyaPage({super.key});

  @override
  State<LainnyaPage> createState() => _LainnyaPageState();
}

class _LainnyaPageState extends State<LainnyaPage> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.dashboardScaffoldKey),
      appBar: AppBar(
        title: Text(
          'Lainnya',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocProvider<OtherBloc>(
        create: (context) => Injector.instance<OtherBloc>(),
        child: BlocConsumer<OtherBloc, OtherState>(
          listener: (context, state) async {
            if (state.logoutStatus == "SUKSES") {
              setState(() {
                _isLoading = false;
              });
              final prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              if (context.mounted) {
                context.read<AppBloc>().add(const AppEvent.enableFirstUse());
                context.pushReplacement(AppRouter.loginPath);
              }
            }  
          },
          builder: (context, state){
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: SvgPicture.asset(
                              'assets/icons/icon_lainnya.svg',
                              color: AppColors.mainBlackColor,
                            ),
                          ),
                          AppSpacing.horizontalSpacing10,
                          Expanded(
                            child: Text(
                              'Kelola Akun',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainBlackColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.disabledColor,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: SvgPicture.asset(
                              'assets/icons/icon_notifikasi.svg',
                              color: AppColors.mainBlackColor,
                            ),
                          ),
                          AppSpacing.horizontalSpacing10,
                          Expanded(
                            child: Text(
                              'Notifikasi',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainBlackColor,
                                  ),
                            ),
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.dangerColor),
                            child: Text(
                              '1',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainWhiteColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.disabledColor,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: SvgPicture.asset(
                              'assets/icons/icon_pesan.svg',
                              color: AppColors.mainBlackColor,
                            ),
                          ),
                          AppSpacing.horizontalSpacing10,
                          Expanded(
                            child: Text(
                              'Pesan',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainBlackColor,
                                  ),
                            ),
                          ),
                          Container(
                            height: 26,
                            width: 26,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.dangerColor),
                            child: Text(
                              '1',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainWhiteColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.disabledColor,
                      thickness: 1,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => _onLogout(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset(
                                'assets/icons/icon_keluar.svg',
                                color: AppColors.dangerColor,
                              ),
                            ),
                            AppSpacing.horizontalSpacing10,
                            Expanded(
                              child: Text(
                                'Keluar',
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.dangerColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                showLoading(),
              ],
            );
          },
        )
      ),
    );
  }

  Future<void> _onLogout(BuildContext context) async {
    setState(() => _isLoading = true);
    final prefs = await SharedPreferences.getInstance();
    late String email = prefs.getString('email') ?? '';
    late String password = prefs.getString('password') ?? '';

    context.read<OtherBloc>().add(
        OtherEvent.logoutRequested(LogoutPost(email: email, password: password)));
  }

  Widget showLoading() {
    return Visibility(
      visible: _isLoading,
      child: Container(
        width: 24,
        height: 24,
        padding: const EdgeInsets.all(2),
        child: const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 3,
        ),
      ),
    );
  }
}

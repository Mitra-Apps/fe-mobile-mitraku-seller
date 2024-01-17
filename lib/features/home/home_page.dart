import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/home/view/dashboard_page.dart';
import 'package:mitraku_seller/features/home/view/lainnya_page.dart';
import 'package:mitraku_seller/features/home/view/toko_anda_page.dart';
import 'package:mitraku_seller/features/home/widgets/profil_toko_widget.dart';
import 'package:mitraku_seller/features/setting/setting_page.dart';
import 'package:mitraku_seller/generated/l10n.dart';
import 'package:mitraku_seller/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
    // BlocProvider.of<MealsBloc>(context).add(LookupRandomMeal());
  }

  int selectedNavigationIndex = 0;
  bool isStoreCreated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      body: IndexedStack(
        index: selectedNavigationIndex,
        children: [
          const DashboardPage(),
          const TokoAndaPage(),
          Container(),
          const LainnyaPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.disabledColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedNavigationIndex,
        onTap: (index) {
          setState(() {
            selectedNavigationIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/icon_dashboard.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/icon_dashboard.svg',
              color: AppColors.mainColor,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/icon_toko_anda.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/icon_toko_anda.svg',
              color: AppColors.mainColor,
            ),
            label: 'Toko Anda',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/icon_transaksi.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/icon_transaksi.svg',
              color: AppColors.mainColor,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/icon_lainnya.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/icon_lainnya.svg',
              color: AppColors.mainColor,
            ),
            label: 'Lainnya',
          ),
        ],
      ),
    );
  }
// Widget _buildBoilerplateExample() {
// AppSpacing.verticalSpacing32,
// ElevatedButton(
//   child: Text(S.of(context).dog_image_random),
//   onPressed: () {
//     context.push(AppRouter.dogImageRandomPath);
//   },
// ),
// AppSpacing.verticalSpacing32,
// ElevatedButton(
//   child: Text(S.of(context).image_from_db),
//   onPressed: () {
//     context.push(AppRouter.imagesFromDbPath);
//   },
// ),
// AppSpacing.verticalSpacing32,
// ElevatedButton(
//   child: Text(S.of(context).assets),
//   onPressed: () {
//     context.push(AppRouter.assetsPath);
//   },
// ),
// const Spacer(
//   flex: 1,
// ),
// ElevatedButton(
//   child: Text(S.of(context).setting),
//   onPressed: () {
//     context.push(AppRouter.settingPath);
//   },
// ),
// AppSpacing.verticalSpacing32,
// }
}

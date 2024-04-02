import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/home/view/dashboard_page.dart';
import 'package:mitraku_seller/features/home/view/other_page.dart';
import 'package:mitraku_seller/features/home/view/product/views/product_page.dart';
import 'package:mitraku_seller/features/home/view/your_store_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNavigationIndex = 0;
  bool isStoreCreated = false;

  final List<Widget> _children = [
    const DashboardPage(),
    const YourStorePage(),
    const ProductPage(),
    Container(),
    const OtherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      body: _children[selectedNavigationIndex],
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
          //Dashboard
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
          //Toko Anda
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
          // Produk
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/icon_list.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/icon_list.svg',
              colorFilter: const ColorFilter.mode(
                AppColors.mainColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Produk',
          ),
          // Transaksi
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
          //Lainnya
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

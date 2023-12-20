import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/features/home/widgets/opening_hours_widget.dart';
import 'package:mitraku_seller/features/home/widgets/store_details_widget.dart';
import 'package:mitraku_seller/features/home/widgets/store_identity_widget.dart';
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
      key: const Key(WidgetKeys.homeScaffoldKey),
      appBar: AppBar(
        title: Text(
          S.of(context).home,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: selectedNavigationIndex,
        children: [
          _buildHomeStore(),
          Container(),
          const SettingPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        currentIndex: selectedNavigationIndex,
        onTap: (index) {
          setState(() {
            selectedNavigationIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: S.of(context).store,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: S.of(context).setting,
          ),
        ],
      ),
    );
  }

  Widget _buildHomeStore() {
    if (!isStoreCreated) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).you_have_no_store,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          AppSpacing.verticalSpacing16,
          ElevatedButton(
            child: Text(S.of(context).create_a_store),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              setState(() {
                isStoreCreated = true;
              });
              // context.push(AppRouter.imagesFromDbPath);
            },
          )
        ],
      ));
    } else {
      return const SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(AppDimens.basePaddingDouble),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StoreIdentityWidget(),
            AppSpacing.verticalSpacing32,
            OpeningHoursWidget(),
            AppSpacing.verticalSpacing32,
            StoreDetailsWidget(),
          ],
        ),
      ));
    }
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

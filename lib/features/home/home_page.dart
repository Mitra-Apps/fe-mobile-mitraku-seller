import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/generated/l10n.dart';
import 'package:mitraku_seller/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key(WidgetKeys.homeScaffoldKey),
      appBar: AppBar(
        title: Text(S.of(context).home),
      ),
      body: Center(
        child: Column(
          children: [
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: Text(S.of(context).dog_image_random),
              onPressed: () {
                context.push(AppRouter.dogImageRandomPath);
              },
            ),
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: Text(S.of(context).image_from_db),
              onPressed: () {
                context.push(AppRouter.imagesFromDbPath);
              },
            ),
            AppSpacing.verticalSpacing32,
            ElevatedButton(
              child: Text(S.of(context).assets),
              onPressed: () {
                context.push(AppRouter.assetsPath);
              },
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              child: Text(S.of(context).setting),
              onPressed: () {
                context.push(AppRouter.settingPath);
              },
            ),
            AppSpacing.verticalSpacing32,
          ],
        ),
      ),
    );
  }
}

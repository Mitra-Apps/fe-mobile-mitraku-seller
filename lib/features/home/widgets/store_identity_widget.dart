import 'package:flutter/material.dart';
import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/features/home/widgets/open_close_widget.dart';

class StoreIdentityWidget extends StatelessWidget {
  const StoreIdentityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.hardEdge,
                color: Color.fromARGB(255, 214, 214, 214),
                child: Expanded(
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/DGRegisterStore.jpg/640px-DGRegisterStore.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            OpenCloseWidget(),
          ],
        ),
        AppSpacing.verticalSpacing16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.store,
                  size: AppDimens.baseIcon,
                ),
                AppSpacing.horizontalSpacing4,
                Text(
                  'Heckler n Koch',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(Icons.edit),
          ],
        ),
        AppSpacing.verticalSpacing4,
        Row(
          children: [
            const Icon(
              Icons.location_pin,
              size: AppDimens.baseIcon,
            ),
            AppSpacing.horizontalSpacing4,
            Text(
              'Jl. Sidobali No. 2, Muja Muju, Umbulharjo, DIY',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        AppSpacing.verticalSpacing4,
        Row(
          children: [
            const Icon(
              Icons.phone_android,
              size: AppDimens.baseIcon,
            ),
            AppSpacing.horizontalSpacing4,
            Text(
              '080989999',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

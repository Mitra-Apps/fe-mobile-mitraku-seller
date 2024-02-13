// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_database/local_database.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/products/create_product/widgets/dropdown_widget.dart';
import 'package:mitraku_seller/features/products/create_product/widgets/text_field_form_widget.dart';
import 'package:mitraku_seller/generated/fonts.gen.dart';

class CreateProductPage extends StatefulWidget {
  const CreateProductPage({super.key});

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  bool isSold = false;
  TextEditingController itemNameController = TextEditingController();
  TextEditingController itemPriceController = TextEditingController();
  TextEditingController itemStockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.createProductScaffoldKey),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {},
          icon: SvgPicture.asset(
            'assets/icons/icon_arrow_left.svg',
            colorFilter: const ColorFilter.mode(
              AppColors.mainBlackColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: const Text('Daftar Produk'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Info Produk',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                        fontFamily: FontFamily.poppins,
                      ),
                ),
                AppSpacing.verticalSpacing20,
                DropDownWidget(
                  fieldTitle: 'Kategori Produk',
                  fieldHint: 'Pilih Kategori',
                  labels: ProductCategoryEnum.values
                      .map(
                        (e) => Label(
                          value: e.label,
                          label: e.label,
                        ),
                      )
                      .toList(),
                  callback: (value) => {},
                ),
                AppSpacing.verticalSpacing20,
                DropDownWidget(
                  fieldTitle: 'Jenis Produk',
                  fieldHint: 'Pilih Jenis Produk',
                  labels: ProductCategoryEnum.values
                      .map(
                        (e) => Label(
                          value: e.label,
                          label: e.label,
                        ),
                      )
                      .toList(),
                  callback: (value) => {},
                ),
                AppSpacing.verticalSpacing20,
                const Divider(color: AppColors.disabledColor),
                itemProductSection(context),
                AppSpacing.verticalSpacing20,
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => itemProductWidget(context),
                ),
                AppSpacing.verticalSpacing4,
                const Divider(color: AppColors.disabledColor),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                      child: Text(
                        'Simpan Produk',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.mainWhiteColor,
                              fontFamily: FontFamily.poppins,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemProductWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.mainWhiteColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: isSold,
                        onChanged: (value) {
                          setState(() {
                            isSold = value;
                          });
                        },
                        trackOutlineWidth: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                          return 1;
                        }),
                        activeTrackColor: AppColors.primaryColor,
                        activeColor: AppColors.mainWhiteColor,
                        inactiveTrackColor: AppColors.disabledLightColor,
                        inactiveThumbColor: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  AppSpacing.horizontalSpacing8,
                  Text(
                    'Item Dijual',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.poppins,
                        ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing20,
              Row(
                children: [
                  TextFieldFormWidget(
                    textController: itemNameController,
                    title: 'Nama Item',
                    hint: 'Tuliskan nama item',
                  ),
                  AppSpacing.horizontalSpacing16,
                  TextFieldFormWidget(
                    textController: itemPriceController,
                    title: 'Harga Item',
                    hint: 'Cth: Rp.20.000',
                  ),
                ],
              ),
              AppSpacing.verticalSpacing20,
              Row(
                children: [
                  TextFieldFormWidget(
                    textController: itemStockController,
                    title: 'Stok Item',
                    hint: 'Cth: 5',
                  ),
                  AppSpacing.horizontalSpacing16,
                  Expanded(
                    child: DropDownWidget(
                      fieldTitle: 'Satuan Item',
                      fieldHint: 'Kg',
                      labels: ProductCategoryEnum.values
                          .map(
                            (e) => Label(
                              value: e.label,
                              label: e.label,
                            ),
                          )
                          .toList(),
                      callback: (value) => {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row itemProductSection(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Text(
            'Item Produk',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryColor,
                  fontFamily: FontFamily.poppins,
                ),
          ),
        ),
        SizedBox(
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size.zero,
              backgroundColor: AppColors.successColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: AppColors.mainWhiteColor,
              size: 20,
            ),
            label: Container(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Text(
                'Tambah Item',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainWhiteColor,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

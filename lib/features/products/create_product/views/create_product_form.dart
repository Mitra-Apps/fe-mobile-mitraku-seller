// ignore_for_file: lines_longer_than_80_chars

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:local_database/local_database.dart';
import 'package:mitraku_seller/core/colors/colors.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/products/create_product/bloc/create_product_bloc.dart';
import 'package:mitraku_seller/features/products/create_product/widgets/button_small.dart';
import 'package:mitraku_seller/features/products/create_product/widgets/button_text.dart';
import 'package:mitraku_seller/features/products/create_product/widgets/dropdown_widget.dart';
import 'package:mitraku_seller/features/products/create_product/widgets/text_field_form_widget.dart';
import 'package:mitraku_seller/generated/fonts.gen.dart';
import 'package:mitraku_seller/widgets/error_page.dart';
import 'package:mitraku_seller/widgets/loading_page.dart';
import 'package:rest_client/rest_client.dart';

class CreateProductForm extends StatefulWidget {
  const CreateProductForm({super.key});

  @override
  State<CreateProductForm> createState() => _CreateProductFormState();
}

class _CreateProductFormState extends State<CreateProductForm> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
    context.read<CreateProductBloc>().add(const CreateProductEvent.init());
  }

  void showToastSuccess(String message) {
    final Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.successColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/icon_white_close.svg'),
          const SizedBox(
            width: 12,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor,
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  void showToastFailed(String message) {
    final Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.dangerColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/icon_white_close.svg'),
          const SizedBox(
            width: 12,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.normal,
              color: CustomColors.whiteColor,
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateProductBloc, CreateProductState>(
      listenWhen: (prev, next) => prev.notification != next.notification,
      listener: (BuildContext context, CreateProductState state) async {
        state.notification?.when(
          notifySuccess: (message) {
            showToastSuccess(message);
          },
          notifyFailed: (message) {
            showToastFailed(message);
          },
          notifyCreateProductSuccess: (String message) {
            showToastSuccess(message);
            Future.delayed(
              const Duration(seconds: 1),
              () {
                context.pop();
              },
            );
          },
        );
      },
      buildWhen: (prev, next) =>
          prev.status != next.status || prev.isBusy != next.isBusy,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            state.status.when(
              initial: () {
                return const LoadingPage();
              },
              loading: () {
                return const LoadingPage();
              },
              loadFailed: (message) {
                return ErrorPage(
                  content: message,
                );
              },
              loadSuccess: (message) {
                return mainUI(context, state);
              },
            ),
          ],
        );
      },
    );
  }

  Column mainUI(
    BuildContext context,
    CreateProductState state,
  ) {
    return Column(
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
          labels: state.dataProductCategory!
              .map(
                (e) => Label(
                  value: e.id.toString(),
                  label: e.name.toString(),
                ),
              )
              .toList(),
          onChanged: (value) => context.read<CreateProductBloc>().add(
                CreateProductEvent.onChangedProductCategory(value: value),
              ),
          selected: state.productCategoryId,
        ),
        AppSpacing.verticalSpacing20,
        DropDownWidget(
          fieldTitle: 'Jenis Produk',
          fieldHint: 'Pilih Jenis Produk',
          labels: state.dataProductType
              .map(
                (e) => Label(
                  value: e.id,
                  label: e.name,
                ),
              )
              .toList(),
          onChanged: (value) => context.read<CreateProductBloc>().add(
                CreateProductEvent.onChangedProductType(value: value),
              ),
          selected: state.productTypeId,
        ),
        AppSpacing.verticalSpacing20,
        const Divider(color: AppColors.disabledColor),
        itemProductSection(context, state),
        AppSpacing.verticalSpacing20,
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.productPostRequest.productList?.length,
          itemBuilder: (context, index) => itemProductWidget(
            context,
            index,
            state.productPostRequest.productList?[index],
            state,
          ),
        ),
        AppSpacing.verticalSpacing4,
        const Divider(color: AppColors.disabledColor),
        AppSpacing.verticalSpacing20,
        ButtonSmall(
          context: context,
          text: 'Simpan Produk',
          backgroundColor: AppColors.primaryColor,
          isEnabled: state.isValid,
          onTap: (context) {
            context
                .read<CreateProductBloc>()
                .add(const CreateProductEvent.productSubmitted());
          },
        ),
      ],
    );
  }

  Color isButtonColorValid(CreateProductState state) =>
      state.isValid ? AppColors.primaryColor : AppColors.disabledColor;

  Widget itemProductWidget(
    BuildContext context,
    int index,
    ProductList? productList,
    CreateProductState state,
  ) {
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
                        value: productList?.saleStatus ?? false,
                        onChanged: (value) => state.isEnabledAddItem
                            ? context.read<CreateProductBloc>().add(
                                  CreateProductEvent.onChangedSaleStatus(
                                    index: index,
                                    value: value,
                                  ),
                                )
                            : null,
                        trackOutlineWidth: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                            return 1;
                          },
                        ),
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
                  AppSpacing.horizontalSpacing10,
                  if (index > 0)
                    ButtonText(
                      context: context,
                      icon: Icons.delete,
                      text: 'Hapus',
                      isEnabled: true,
                      textColor: AppColors.dangerColor,
                      iconColor: AppColors.dangerColor,
                      onTap: (context) {
                        context.read<CreateProductBloc>().add(
                              CreateProductEvent.deleteItemProduct(
                                index: index,
                                productList: productList!,
                              ),
                            );
                      },
                    ),
                ],
              ),
              AppSpacing.verticalSpacing20,
              Row(
                children: [
                  TextFieldFormWidget(
                    isEnable: state.isEnabledAddItem,
                    onChanged: (value) => context.read<CreateProductBloc>().add(
                          CreateProductEvent.onChangedItemName(
                            index: index,
                            value: value,
                          ),
                        ),
                    title: 'Nama Item',
                    hint: 'Tuliskan nama item',
                    keyboardType: TextInputType.text,
                  ),
                  AppSpacing.horizontalSpacing16,
                  TextFieldFormWidget(
                    isEnable: state.isEnabledAddItem,
                    onChanged: (value) => context.read<CreateProductBloc>().add(
                          CreateProductEvent.onChangedItemPrice(
                            index: index,
                            value: value,
                          ),
                        ),
                    title: 'Harga Item',
                    hint: 'Cth: Rp.20.000',
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      CurrencyTextInputFormatter(
                        decimalDigits: 0,
                        symbol: 'Rp.',
                        enableNegative: false,
                      ),
                    ],
                  ),
                ],
              ),
              AppSpacing.verticalSpacing12,
              Row(
                children: [
                  TextFieldFormWidget(
                    isEnable: state.isEnabledAddItem,
                    onChanged: (value) => context.read<CreateProductBloc>().add(
                          CreateProductEvent.onChangedItemStock(
                            index: index,
                            value: value,
                          ),
                        ),
                    title: 'Stok Item',
                    hint: 'Cth: 5',
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ],
                  ),
                  AppSpacing.horizontalSpacing16,
                  Expanded(
                    child: DropDownWidget(
                      fieldTitle: 'Satuan Item',
                      fieldHint: 'Silahkan Pilih',
                      labels: state.isEnabledAddItem
                          ? state.dataUom
                              .map(
                                (e) => Label(
                                  value: e,
                                  label: e,
                                ),
                              )
                              .toList()
                          : [],
                      onChanged: (value) =>
                          context.read<CreateProductBloc>().add(
                                CreateProductEvent.onChangedUomId(
                                  index: index,
                                  value: value,
                                ),
                              ),
                      selected: productList?.uom,
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

  Row itemProductSection(BuildContext context, CreateProductState state) {
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
        ButtonSmall(
          context: context,
          icon: Icons.add,
          text: 'Tambah Item',
          backgroundColor: AppColors.successColor,
          isEnabled: state.isEnabledAddItem,
          onTap: (context) {
            context.read<CreateProductBloc>().add(
                  const CreateProductEvent.addItemProduct(
                    value: ProductList(),
                  ),
                );
          },
        ),
      ],
    );
  }
}

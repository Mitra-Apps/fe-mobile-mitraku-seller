import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/features/products/create_product/bloc/create_product_bloc.dart';
import 'package:mitraku_seller/features/products/create_product/views/create_product_form.dart';
import 'package:mitraku_seller/injector/injector.dart';

class CreateProductPage extends StatefulWidget {
  const CreateProductPage({super.key});

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhiteColor,
      key: const Key(WidgetKeys.createProductScaffoldKey),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => {context.pop()},
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
      body: BlocProvider(
        create: (context) => Injector.instance<CreateProductBloc>(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const CreateProductForm(),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:mitraku_seller/core/dimens/app_dimens.dart';
import 'package:mitraku_seller/core/spacings/app_spacing.dart';
import 'package:mitraku_seller/features/app/bloc/app_bloc.dart';
import 'package:mitraku_seller/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          _LangRow(),
          AppSpacing.verticalSpacing24,
          _DarkModeRow(),
          AppSpacing.verticalSpacing48,
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: MaterialButton(
              color: Colors.purple,
              onPressed: () {
                context.read<AppBloc>().add(const AppEvent.enableFirstUse());
              },
              child: const Text(
                "Logout",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LangRow extends StatelessWidget {
  const _LangRow();

  @override
  Widget build(BuildContext context) {
    final String locale = context.select((AppBloc bloc) => bloc.state.locale);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: AppDimens.basePaddingDouble,
              top: AppDimens.basePaddingDouble,
              right: AppDimens.basePaddingDouble),
          child: Text(
            'Language',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        RadioListTile<String>(
          value: 'en',
          groupValue: locale,
          activeColor: Colors.purple,
          onChanged: (value) {
            context
                .read<AppBloc>()
                .add(const AppEvent.localeChanged(locale: 'en'));
          },
          title: Text(S.current.english),
        ),
        RadioListTile<String>(
          value: 'id',
          groupValue: locale,
          activeColor: Colors.purple,
          onChanged: (value) {
            context
                .read<AppBloc>()
                .add(const AppEvent.localeChanged(locale: 'id'));
          },
          title: Text(S.current.bahasa_indonesia),
        ),
      ],
    );
  }
}

class _DarkModeRow extends StatelessWidget {
  const _DarkModeRow();

  @override
  Widget build(BuildContext context) {
    final bool darkMode =
        context.select((AppBloc bloc) => bloc.state.isDarkMode);
    return SwitchListTile(
      value: darkMode,
      onChanged: (value) {
        context.read<AppBloc>().add(const AppEvent.darkModeChanged());
      },
      activeColor: Colors.purple,
      title: Text(
        S.of(context).dark_mode,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

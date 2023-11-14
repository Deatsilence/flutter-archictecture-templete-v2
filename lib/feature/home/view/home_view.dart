import 'package:architecture_templete_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_templete_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_templete_v2/product/init/product_localization.dart';
import 'package:architecture_templete_v2/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(LocaleKeys.general_dialog_version_VERSION).tr(),
            const Text(LocaleKeys.general_dialog_version_CONTENT).tr(),
            const Text(LocaleKeys.general_button_SAVE).tr(args: ['Mert']),
            OutlinedButton(
              onPressed: () {
                ProductLocalization.updateLanguage(
                  context: context,
                  value: Locales.en,
                );
              },
              child: const Text(
                LocaleKeys.general_button_CHANGE_LANGUAGE_ENGLISH,
              ).tr(),
            ),
            OutlinedButton(
              onPressed: () {
                ProductLocalization.updateLanguage(
                  context: context,
                  value: Locales.tr,
                );
              },
              child: const Text(
                LocaleKeys.general_button_CHANGE_LANGUAGE_TURKISH,
              ).tr(),
            ),
          ],
        ),
      ),
    );
  }
}

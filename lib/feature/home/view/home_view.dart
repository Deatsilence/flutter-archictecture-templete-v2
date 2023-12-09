import 'package:architecture_templete_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_templete_v2/product/init/config/app_environment.dart';
import 'package:architecture_templete_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_templete_v2/product/init/product_localization.dart';
import 'package:architecture_templete_v2/product/navigation/app_router.dart';
import 'package:architecture_templete_v2/product/utility/constants/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
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
            Assets.icons.icDoc.svg(package: 'gen'),
            Assets.lottie.animLoading.lottie(package: 'gen'),
            Assets.images.imgRocketLunch.image(
              package: 'gen',
              height: 50,
              width: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                final response = await context.router.push<bool?>(
                  HomeDetailRoute(id: '1'),
                );
              },
              child: Text(AppEnvironmentItems.apiKey.value),
            ),
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

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/injectable/injectable.dart';
import 'package:github_search_app/style/themes.dart';
import 'package:github_search_app/utils/hide_keyboard.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:provider/provider.dart';

const _tabletSize = Size(750, 1334);
const _mobileSize = Size(375, 667);
const englishLanguageCode = 'en';

class App extends StatelessWidget {
  final RootStackRouter _router;

  const App(
    this._router, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => HookedBlocConfigProvider(
        injector: () => getIt.get,
        builderCondition: (state) => state != null,
        listenerCondition: (state) => state != null,
        child: _globalUnfocusKeyboard(
          context: context,
          child: ScreenUtilInit(
            designSize: Device.get().isTablet ? _tabletSize : _mobileSize,
            builder: (_, __) => MultiProvider(
              providers: [
                ListenableProvider(create: (_) => AppThemeModel()),
              ],
              child: Consumer(
                builder: (context, AppThemeModel model, child) => ColoredBox(
                  color: context.getColors().white,
                  child: MaterialApp.router(
                    builder: (_, child) => child ?? const SizedBox.shrink(),
                    routeInformationParser: _router.defaultRouteParser(),
                    routerDelegate: _router.delegate(
                      navigatorObservers: () => [
                        ...AutoRouterDelegate.defaultNavigatorObserversBuilder(),
                      ],
                    ),
                    theme: ThemeData(
                      extensions: model.currentExtensions,
                      colorScheme: ColorScheme.light(primary: context.getColors().primary),
                    ),
                    localizationsDelegates: const [
                      Strings.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    locale: const Locale(englishLanguageCode),
                    supportedLocales: Strings.delegate.supportedLocales,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => hideKeyboard(context),
        child: child,
      );
}

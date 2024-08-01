import 'package:flavor_localizations/barrel.dart';

class MyApp extends StatelessWidget {
  const MyApp({required this.router, required this.blocHelper, super.key});
  final NavigationRouter router;
  final MultiBlocHelper blocHelper;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocHelper.getProviders(),
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (context, localeState) {
          return BlocBuilder<ThemeChangerCubit, ThemeChangerState>(
            builder: (context, themeState) {
              return MaterialApp(
                title: F.title,
                locale: localeState.locale,
                themeMode: themeState.brightness == Brightness.light
                    ? ThemeMode.light
                    : ThemeMode.dark,
                darkTheme: ThemeData(
                  appBarTheme: AppBarTheme(color: F.color.secondaryColor),
                  primaryColor: F.color.secondaryColor,
                  brightness: themeState.brightness,
                  scaffoldBackgroundColor: F.color.primaryColorLight,
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: F.color.secondaryColorLight,
                      brightness: themeState.brightness),
                  useMaterial3: true,
                ),
                theme: ThemeData(
                  appBarTheme: AppBarTheme(color: F.color.secondaryColorLight),
                  primaryColor: F.color.primaryColor,
                  brightness: themeState.brightness,
                  scaffoldBackgroundColor: F.color.primaryColor,
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: F.color.primaryColorLight,
                      brightness: themeState.brightness),
                  useMaterial3: true,
                ),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                onGenerateRoute: router.onGenerateRoute,
                debugShowCheckedModeBanner: F.appFlavor == Flavor.development,
                debugShowMaterialGrid: false,
              );
            },
          );
        },
      ),
    );
  }
}

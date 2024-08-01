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
                theme: ThemeData(
                  brightness: themeState.brightness,
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.deepPurple,
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

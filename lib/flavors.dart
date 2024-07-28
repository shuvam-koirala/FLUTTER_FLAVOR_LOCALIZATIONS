enum Flavor {
  development,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Development App';
      case Flavor.production:
        return 'Production App';
      default:
        return 'title';
    }
  }

}

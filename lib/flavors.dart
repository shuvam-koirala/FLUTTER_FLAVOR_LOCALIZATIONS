import 'package:flavor_localizations/barrel.dart';
import 'package:flavor_localizations/core/models/color_palette_model.dart';
import 'package:flavor_localizations/core/utils/constants/color_constants.dart';

enum Flavor {
  development,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static ColorPaletteModel get color {
    switch (appFlavor) {
      case Flavor.development:
        return ColorConstants.devColor;
      case Flavor.production:
        return ColorConstants.prodColor;
      default:
        return ColorConstants.defaultColor;
    }
  }

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

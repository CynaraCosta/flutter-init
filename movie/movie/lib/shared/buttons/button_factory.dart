import 'package:movie/shared/buttons/button.dart';
import 'package:movie/shared/buttons/button_styles_enum.dart';
import 'package:movie/shared/buttons/ingressos_button.dart';

class ButtonFactory {
  static Button draw(ButtonStylesEnum style) {
    switch (style) {
      case ButtonStylesEnum.ingressos:
        return IngressosButton();
      default:
        return AnotherButton();
    }
  }
}
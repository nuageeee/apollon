import 'package:mineral/api.dart';

class Button {
  final testButton = ButtonBuilder.primary('p')
    ..setLabel('Click mon s')
    ..setDisabled(false);
}

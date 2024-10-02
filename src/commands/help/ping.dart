import 'dart:async';

import 'package:mineral/api.dart';

import '../../components/button.dart';

final class PingCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext ctx, {required int value}) {
    print(value);
    ctx.interaction.reply(content: '$value', components: [RowBuilder()..addComponent(Button().testButton)]);
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('ping')
      ..setDescription('Send bot ping')
      ..setHandle(handle)
      ..addOption(ChoiceOption.integer(
          name: 'value',
          description: 'This is a value option',
          required: true,
          choices: [Choice('First value', 1), Choice('Second value', 2)]));
  }
}

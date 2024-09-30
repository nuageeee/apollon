import 'dart:async';

import 'package:mineral/api.dart';

final class BanCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext ctx, {required user}) {
    
  }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('ban')
      ..setDescription('Ban a membre')
      ..setHandle(handle)
      ..addOption(Option.mentionable(
          name: 'user', description: 'Choose user to ban', required: true));
  }
}

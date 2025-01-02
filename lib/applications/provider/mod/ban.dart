import 'dart:async';

import 'package:mineral/api.dart';
import 'package:mineral/contracts.dart';

final class BanCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext context, {required member}) async {  
    await member.ban(deleteSince: Duration(days: 1), reason: "Just a test").then((e) {
      context.interaction.reply(content: 'Sujet banni');
    });
    context.interaction.reply(content: "Sujet non banni");
    }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('ban')
      ..setDescription('Ban a user')
      ..setHandle(handle)
      ..addOption(Option.user(name: 'member', description: 'Member to ban'));
  }
}

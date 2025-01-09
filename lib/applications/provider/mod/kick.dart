import 'dart:async';

import 'package:mineral/api.dart';

final class KickCommand implements CommandDeclaration {
  FutureOr<void> handle(ServerCommandContext context, {required member}) async {  
    await member.kick(reason: "Just a test").then((e) {
      context.interaction.reply(content: 'Sujet kick');
    });
    context.interaction.reply(content: "Sujet non kick");
    }

  @override
  CommandDeclarationBuilder build() {
    return CommandDeclarationBuilder()
      ..setName('kick')
      ..setDescription('kick a user')
      ..setHandle(handle)
      ..addOption(Option.user(name: 'member', description: 'Member to kick', required: true));
  }
}

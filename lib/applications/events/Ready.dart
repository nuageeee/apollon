import 'package:mineral/api.dart';
import 'package:mineral/container.dart';
import 'package:mineral/events.dart';

final class Ready extends ReadyEvent {
  @override
  void handle(Bot bot) async {
  print('READY | Bot -> ${bot.username}#${bot.discriminator} with id -> ${bot.id} is started.');
  }
}

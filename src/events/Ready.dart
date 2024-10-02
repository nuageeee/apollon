import 'package:mineral/api.dart';
import 'package:mineral/container.dart';
import 'package:mineral/events.dart';

final class Ready extends ReadyEvent with InjectLogger {
  @override
  void handle(Bot bot) async {
    logger.info('READY | Bot -> ${bot.username}#${bot.discriminator} with id -> ${bot.id} is started.');
  }
}

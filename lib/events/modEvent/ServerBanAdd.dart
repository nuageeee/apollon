import 'dart:async';

import 'package:mineral/api.dart';
import 'package:mineral/events.dart';
import 'package:mineral/services.dart';

final class ServerBanAdd extends ServerBanAddEvent {
  @override
  FutureOr<void> handle(Member? member, User user, Server server) async {
    print('User ${user.username} is ban');
  }
}
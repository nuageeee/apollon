import 'package:mineral/api.dart';

import 'deploy.dart';

final class AdminProvider extends Provider {
  final Client _client;

  AdminProvider(this._client) {
    _client.register(DeployCommand.new);
  }
}
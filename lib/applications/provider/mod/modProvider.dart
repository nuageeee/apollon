import 'package:apollon/applications/provider/mod/ban.dart';
import 'package:apollon/applications/provider/mod/kick.dart';
import 'package:mineral/api.dart';

final class ModProvider extends Provider {
  final Client _client;

  ModProvider(this._client) {
    _client.register(BanCommand.new);
    _client.register(KickCommand.new);
  }
}
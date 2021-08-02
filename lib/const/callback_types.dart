import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';

typedef AuthResponseCallbacl = 
          void Function(NetworkResponse<UserProfile> response);

typedef SendAuthRequestFunction = void Function(String login, String password);

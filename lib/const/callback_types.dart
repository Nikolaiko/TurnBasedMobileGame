import '../model/network/network_response.dart';
import '../model/user_profile/user_profile.dart';

typedef AuthResponseCallbacl = 
          void Function(NetworkResponse<UserProfile> response);

import 'package:second_project_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class UserEndpoint extends Endpoint
{
  Future<User> createUser(Session session, User user) async{
    await User.db.insertRow(session, user);
    return user;
  }

  Future<User?> getUserById(Session session, int userId) async{
    User? user = await User.db.findById(session, userId);
    return user;  
  }
}
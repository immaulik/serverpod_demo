import 'package:second_project_server/src/generated/activity.dart';
import 'package:serverpod/server.dart';

class ActivityEndpoint extends Endpoint {
  Future<Activity> createActivity(Session session, Activity activity) async {
    await Activity.db.insertRow(session, activity);
    return activity;
  }
}

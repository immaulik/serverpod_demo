import 'package:second_project_server/src/generated/checklist.dart';
import 'package:serverpod/server.dart';

class ChecklistEndpoint extends Endpoint{
  Future<Checklist> createActivity(Session session, Checklist checklist) async {
    await Checklist.db.insertRow(session, checklist);
    return checklist;
  }

  Future<bool> updateChecklist(Session s, {required Checklist checklist}) async {
    try {
      await Checklist.db.updateRow(s, checklist);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteChecklist(Session s, Checklist checklist) async {
    try {
      await Checklist.db.deleteRow(s, checklist);
      return true;
    } catch (e) {
      return false;
    }
  }
}
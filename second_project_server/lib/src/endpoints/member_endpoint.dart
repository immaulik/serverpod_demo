import 'package:second_project_server/src/generated/member.dart';
import 'package:second_project_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class MemberEndpoint extends Endpoint {
  Future<Member> addMember(Session s, Member member) async {
    await Member.db.insertRow(s, member);
    return member;
  }

  Future<List<Member>> getMembersByWorkspace(Session s,
      {required int workspaceId}) async {
    List<Member> list = await Member.db.find(
      s,
      where: (p0) => p0.workspaceId.equals(workspaceId),
    );
    return list;
  }

  Future<List<User>> getInfoOfMembers(Session s, List<Member> members) async {
    List<User> users = [];

    for (int i = 0; i < members.length; i++) {
      User? user = await User.db.findById(s, members[i].userId);
      users.add(user!);
    }
    return users;
  }

  Future<Workspace> deleteMember(
      Session s, Member member, Workspace workspace) async {
    await Member.db.deleteWhere(
      s,
      where: (p0) => p0.id.equals(member.id),
    );
    List<Member> members = await Member.db.find(
      s,
      where: (p0) => p0.workspaceId.equals(workspace.id),
    );
    workspace.members = members;
    return workspace;
  }
}

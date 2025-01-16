import 'package:flutter/material.dart';
import '../../models/group.dart';
import '../../screens/group_details_page.dart';

class GroupListItem extends StatelessWidget {
  final Group group;

  const GroupListItem({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage:
              group.imageUrl.isNotEmpty ? NetworkImage(group.imageUrl) : null,
          child: group.imageUrl.isEmpty ? const Icon(Icons.group) : null,
        ),
        title: Text(group.name),
        subtitle: Text('${group.activity} • ${group.members} members'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroupDetailsPage(
                group: group.toJson(),
                groupId: group.id.toString(),
              ),
            ),
          );
        },
      ),
    );
  }
} 
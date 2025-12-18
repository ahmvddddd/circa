import 'package:flutter/material.dart';
import '../../../../common/widgets/groups/group_tile.dart';
import '../../../../utils/constants/sizes.dart';

class MyGroupsTablet extends StatelessWidget {
  const MyGroupsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Sizes.spaceBtwItems),
          
            GroupTile(
              title: "Final Year Dinner",
              subtitle: "Plan your next getaway",
              badge: "Admin",
            ),
            const SizedBox(height: 14),
          
            GroupTile(
              title: "Unity Estate",
              subtitle: "Monthly bills and expenses",
              badge: "Member",
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
          
            GroupTile(
              title: "Project Phoenix Team",
              subtitle: "Budget for the new initiative",
              badge: "Admin",
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
          
            GroupTile(
              title: "Book Club",
              subtitle: "Monthly book purchases",
              badge: "Member",
            ),
          ],
        ),
      ));
  }
}
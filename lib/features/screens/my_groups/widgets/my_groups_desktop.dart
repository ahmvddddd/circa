import 'package:flutter/material.dart';
import '../../../../common/appbars/custom_appbar.dart';
import '../../../../common/widgets/group_tile.dart';
import '../../../../utils/constants/sizes.dart';

class MyGroupsDesktop extends StatelessWidget {
  const MyGroupsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(title: "My Groups"),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Sizes.spaceBtwItems),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: Sizes.spaceBtwSections),

                      GroupTile(
                        title: "Final Year Dinner",
                        subtitle: "Plan your next getaway",
                        badge: "Admin",
                      ),
                      const SizedBox(height: Sizes.spaceBtwItems),

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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

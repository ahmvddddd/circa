import 'package:circa/responsive_scaffold.dart';
import 'package:flutter/material.dart';
import 'widgets/my_groups_desktop.dart';
import 'widgets/my_groups_mobile.dart';
import 'widgets/my_groups_tablet.dart';

class MyGroupsStaticPage extends StatelessWidget {
  const MyGroupsStaticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      mobileBody: MyGroupsMobile(),
      tabletBody: MyGroupsTablet(),
      desktopBody: MyGroupsDesktop(),
      title: 'My Groups',
    );
  }
}

import 'package:flutter/material.dart';

import '../../../responsive_scaffold.dart';
import 'widgets/group_summary_desktop.dart';
import 'widgets/group_summary_mobile.dart';
import 'widgets/group_summary_tablet.dart';

class GroupSummaryScreen extends StatelessWidget {
  const GroupSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      mobileBody: GroupSummaryMobile(),
      tabletBody: GroupSummaryTablet(),
      desktopBody: GroupSummaryDesktop(),
      title: 'Final Year Dinner',
    );
  }
}

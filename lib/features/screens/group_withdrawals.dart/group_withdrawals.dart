import 'package:flutter/material.dart';
import '../../../responsive_scaffold.dart';
import 'widgets/group_widthdrawals_desktop.dart';
import 'widgets/group_withdrawals_mobile.dart';
import 'widgets/group_withdrawals_tablet.dart';

class GroupWithdrawals extends StatelessWidget {
  const GroupWithdrawals({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'Group Withdrawals',
      mobileBody: GroupWithdrawalsMobile(),
      tabletBody: GroupWithdrawalsTablet(),
      desktopBody: GroupWithdrawalsDesktop(),
    );
  }
}
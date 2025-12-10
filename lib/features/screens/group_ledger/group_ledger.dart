import 'package:flutter/material.dart';
import '../../../responsive_scaffold.dart';
import 'widgets/group_ledger_desktop.dart';
import 'widgets/group_ledger_mobile.dart';
import 'widgets/group_ledger_tablet.dart';

class GroupLedgerPage extends StatelessWidget {
  const GroupLedgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'Group Ledger',
      mobileBody: GroupLedgerMobile(),
      tabletBody: GroupLedgerTablet(),
      desktopBody: GroupLedgerDesktop(),
    );
  }
}
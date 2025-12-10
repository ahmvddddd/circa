import 'package:flutter/material.dart';
import '../../../responsive_scaffold.dart';
import 'widgets/withdrawal_details_desktop.dart';
import 'widgets/withdrawal_details_mobile.dart';
import 'widgets/withdrawal_details_tablet.dart';

class WithdrawalDetailsDarkPage extends StatelessWidget {
  const WithdrawalDetailsDarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'Withdrawal Details',
      mobileBody: WithdrawalDetailsMobile(),
      tabletBody: WithdrawalDetailsTablet(),
      desktopBody: WithdrawalDetailsDesktop(),
    );
  }
}

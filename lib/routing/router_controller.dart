// import '../../features/screens/auth/sign_in.dart';
import '../../features/screens/withdrawal_details./withdrawal_details.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
// import '../features/screens/auth/sign_up.dart';
import '../features/screens/group_ledger/group_ledger.dart';
import '../features/screens/group_summary/group_summary.dart';
import '../features/screens/group_withdrawals.dart/group_withdrawals.dart';
import '../features/screens/my_groups/my_groups.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/mygroups',
    routes: [
      // GoRoute(
      //   path: '/signin',
      //   builder: (context, state) => const SignInPage(),
      // ),
      // GoRoute(
      //   path: '/signup',
      //   builder: (context, state) => const SignUpPage(),
      // ),
      GoRoute(
        path: '/mygroups',
        builder: (context, state) => const MyGroupsStaticPage(),
      ),
      GoRoute(
        path: '/groupsummary',
        builder: (context, state) =>  GroupSummaryScreen(),
      ),
      GoRoute(
        path: '/groupwithdrawals',
        builder: (context, state) =>  GroupWithdrawals(),
      ),
      GoRoute(
        path: '/withdrawaldetails',
        builder: (context, state) => const WithdrawalDetailsDarkPage(),
      ),
      GoRoute(
        path: '/ledger',
        builder: (context, state) => const GroupLedgerPage(),
      ),
    ],
  );
});

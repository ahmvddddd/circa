import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/constants/custom_colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../routing/router_controller.dart';
import '../../utils/helpers/helper_function.dart';
import 'sidebar_widget.dart';

class CustomSideBar extends ConsumerWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentRoute = ref.watch(currentRouteProvider);
    final dark = HelperFunction.isDarkMode(context);
    final menuItems = [
      {'label': 'My Groups', 'icon': Icons.groups, 'route': '/mygroups'},
      {
        'label': 'Group Summary',
        'icon': Icons.analytics_outlined,
        'route': '/groupsummary',
      },
      {
        'label': 'Group Withdrawals',
        'icon': Icons.arrow_circle_down_outlined,
        'route': '/groupwithdrawals',
      },
      {
        'label': 'Withdrawal Details',
        'icon': Icons.receipt_long_outlined,
        'route': '/withdrawaldetails',
      },
      {
        'label': 'Group Ledger',
        'icon': Icons.list_alt_outlined,
        'route': '/ledger',
      },
    ];

    return Drawer(
      width: 240,
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: dark
              ? CustomColors.darkBackground
              : CustomColors.lightBackground,
          border: Border(
            right: BorderSide(color: CustomColors.darkGrey, width: 0.3),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: Sizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(Sizes.sm),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: Sizes.spaceBtwSections),

                        const SizedBox(height: Sizes.spaceBtwSections),
                        for (final item in menuItems)
                          SideBarWidget(
                            icon: item['icon'] as IconData,
                            label: item['label'] as String,
                            route: item['route'] as String,
                            isActive: currentRoute == item['route'],
                            onTap: () {
                              ref.read(currentRouteProvider.notifier).state =
                                  item['route'] as String;
                              context.go(item['route'] as String);
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';
import '../../../utils/constants/custom_colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentRoute = GoRouterState.of(context).uri.toString();

    final dark = HelperFunction.isDarkMode(context);

    final menuItems = [
      {'label': 'My Groups', 'icon': Icons.groups, 'route': '/mygroups'},
      {
        'label': 'Group Summary',
        'icon': Icons.analytics,
        'route': '/groupsummary',
      },
      {
        'label': 'Group Withdrawals',
        'icon': Icons.arrow_circle_down,
        'route': '/groupwithdrawals',
      },
      {
        'label': 'Withdrawal Details',
        'icon': Icons.receipt_long,
        'route': '/withdrawaldetails',
      },
      {'label': 'Group Ledger', 'icon': Icons.list_alt, 'route': '/ledger'},
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: CustomColors.darkGrey, width: 0.3),
        ),
      ),
      child: Drawer(
        backgroundColor: dark
            ? CustomColors.darkBackground
            : CustomColors.lightBackground,
        shape: const BeveledRectangleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.sm),
          child: ListView(
            // Makes the drawer scrollable automatically
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: Sizes.spaceBtwItems),
              const SizedBox(height: Sizes.spaceBtwSections),

              // Menu items
              for (final item in menuItems)
                _SidebarItem(
                  icon: item['icon'] as IconData,
                  label: item['label'] as String,
                  route: item['route'] as String,
                  isActive: currentRoute == item['route'],
                  onTap: () {
                    context.go(item['route'] as String);
                    Navigator.of(context).maybePop();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SidebarItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final String route;
  final bool isActive;
  final VoidCallback onTap;

  const _SidebarItem({
    required this.icon,
    required this.label,
    required this.route,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<_SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<_SidebarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    final bool isHighlighted = widget.isActive || _isHovered;

    final iconColor = isHighlighted
        ? Colors.white
        : (dark ? Colors.white : Colors.black);

    final textColor = isHighlighted
        ? (dark ? Colors.white : Colors.white)
        : (dark ? Colors.white : Colors.black);

    final bgColor = isHighlighted ? CustomColors.primary : Colors.transparent;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Link(
        uri: Uri.parse(widget.route),
        target: LinkTarget.self,
        builder: (context, followLink) => GestureDetector(
          onTap: () {
            widget.onTap();
            followLink?.call();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(widget.icon, color: iconColor),
                const SizedBox(width: Sizes.sm),
                Text(
                  widget.label,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: textColor,
                    fontWeight: widget.isActive
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

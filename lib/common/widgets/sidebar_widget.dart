// import 'package:flutter/material.dart';
// import 'package:url_launcher/link.dart';
// import '../../../utils/constants/sizes.dart';
// import '../../../utils/helpers/helper_function.dart';

// class SideBarWidget extends StatefulWidget {
//   final IconData icon;
//   final String label;
//   final String route;
//   final bool isActive;
//   final VoidCallback onTap;

//   const SideBarWidget({super.key,
//     required this.icon,
//     required this.label,
//     required this.route,
//     required this.isActive,
//     required this.onTap,
//   });

//   @override
//   State<SideBarWidget> createState() => _SideBarWidgetState();
// }

// class _SideBarWidgetState extends State<SideBarWidget> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     final dark = HelperFunction.isDarkMode(context);
//     final bgColor = widget.isActive
//         ? dark
//               ? Colors.white.withValues(alpha: 0.1)
//               : Colors.black.withValues(alpha: 0.1)
//         : _isHovered
//         ? dark
//               ? Colors.white.withValues(alpha: 0.1)
//               : Colors.black.withValues(alpha: 0.1)
//         : Colors.transparent;

//     final iconColor = widget.isActive
//         ? dark
//               ? Colors.white
//               : Colors.black
//         : dark
//         ? Colors.white
//         : Colors.black;

//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: Link(
//         uri: Uri.parse(widget.route),
//         target: LinkTarget.self,
//         builder: (context, followLink) => GestureDetector(
//           onTap: () {
//             widget.onTap();
//             followLink?.call();
//           },
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 200),
//             margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//             decoration: BoxDecoration(
//               color: bgColor,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Row(
//               children: [
//                 Icon(widget.icon, color: iconColor),
//                 const SizedBox(width: Sizes.sm),
//                 Text(
//                   widget.label,
//                   style: Theme.of(context).textTheme.labelLarge!.copyWith(
//                     color: iconColor,
//                     fontSize: widget.isActive || _isHovered ? 14 : 12,
//                     fontWeight: widget.isActive
//                         ? FontWeight.bold
//                         : FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../../utils/constants/custom_colors.dart';

class SideBarWidget extends StatefulWidget {
  final IconData icon;
  final String label;
  final String route;
  final bool isActive;
  final VoidCallback onTap;

  const SideBarWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.route,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    // Background (keep your current logic)
    final bgColor = (widget.isActive || _isHovered)
        ? CustomColors.primary
        : Colors.transparent;

    // ICON + TEXT COLOR → CustomColors.primary when active or hovered
    final itemColor = (widget.isActive || _isHovered)
        ? Colors.white
        : (dark ? Colors.white : Colors.black);

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
                Icon(widget.icon, color: itemColor),
                const SizedBox(width: Sizes.sm),
                Text(
                  widget.label,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: itemColor,
                    fontSize: widget.isActive || _isHovered ? 14 : 12,
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

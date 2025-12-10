import 'package:circa/utils/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../features/controllers/theme_controller.dart';

class CustomAppbar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const CustomAppbar({super.key, required this.title, this.scaffoldKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeControllerProvider);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.transparent, width: 0.5),
        ),
      ),
      child: AppBar(
        leading: !DeviceUtils.isDeskTopScreen(context)
            ? IconButton(
                onPressed: () {
                  scaffoldKey?.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu_outlined,
                  color: CustomColors.primary,
                  size: Sizes.iconMd,
                ),
              )
            : null,
        title: Text(title, style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeControllerProvider.notifier).toggleTheme();
            },
            icon: Icon(
              themeMode == ThemeMode.dark
                  ? Icons.dark_mode
                  : Icons.dark_mode_outlined,
              size: Sizes.iconM,
            ),
          ),

          const SizedBox(width: Sizes.sm),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 13,
              child: Icon(Icons.person, size: Sizes.iconM),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}

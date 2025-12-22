import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// --- MOCK UTILS (Replace these with your actual imports) ---
class CustomColors {
  static const primary = Colors.blue;
}
class Sizes {
  static const double iconM = 24.0;
}
class HelperFunctions {
  static bool isDarkMode(BuildContext context) => 
      Theme.of(context).brightness == Brightness.dark;
}

// 1. ROUTER PROVIDER
// Using Riverpod to provide the GoRouter instance
final routerProvider = Provider<GoRouter>((ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();
  
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/home',
    routes: [
      // StatefulShellRoute maintains the state of each tab
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNavbar(navigationShell: navigationShell);
        },
        branches: [
          // Home Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const Center(child: Text('Home Screen')),
              ),
            ],
          ),
          // Favorites Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorites',
                builder: (context, state) => const Center(child: Text('Favorites Screen')),
              ),
            ],
          ),
          // Profile Branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const Center(child: Text('Profile Screen')),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});

// 2. MAIN ENTRY POINT
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}

// 3. SCAFFOLD WITH NAVBAR (The Shell)
class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The body displays the currently active branch
      body: navigationShell,
      // extendBody allows the floating navbar to look better over content
      extendBody: true, 
      bottomNavigationBar: CustomBottomNavBar(navigationShell: navigationShell),
    );
  }
}

// 4. YOUR UPDATED CUSTOM NAVBAR
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: CustomColors.primary, width: 1),
            boxShadow: [
              BoxShadow(
                color: dark ? Colors.black.withOpacity(0.5) : Colors.white.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              backgroundColor: dark 
                ? Colors.black.withOpacity(0.8) // Increased opacity for readability
                : Colors.white.withOpacity(0.8),
              currentIndex: navigationShell.currentIndex,
              onTap: (index) => _onTap(index),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: CustomColors.primary,
              unselectedItemColor: dark ? Colors.white : Colors.black,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: Sizes.iconM),
                  activeIcon: Icon(Icons.home_filled, size: Sizes.iconM),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border, size: Sizes.iconM),
                  activeIcon: Icon(Icons.favorite, size: Sizes.iconM),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline, size: Sizes.iconM),
                  activeIcon: Icon(Icons.person, size: Sizes.iconM),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(int index) {
    // Navigates to the branch. If the same tab is tapped again, 
    // it goes back to the initial location of that branch.
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
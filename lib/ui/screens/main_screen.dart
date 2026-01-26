import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/theme/theme.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Use AutoTabsRouter.pageView to enable swiping
    return AutoTabsRouter.pageView(
      routes: const [HomeRoute(), GenreRoute(), FavoriteRoute()],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          backgroundColor: screenBackground,
          // 2. The 'child' here is the slidable PageView managed by AutoRoute
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: screenBackground,
            selectedItemColor: primaryButton,
            unselectedItemColor: posterBorder,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Symbols.genres),
                label: 'Genres',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favourites',
              ),
            ],
          ),
        );
      },
    );
  }
}

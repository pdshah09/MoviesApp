import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:movieapp/ui/screens/favorites/favorite_screen.dart';
import 'package:movieapp/ui/screens/genres/genre_screen.dart';
import 'package:movieapp/ui/screens/home/home_screen.dart';
import 'package:movieapp/ui/screens/videos/video_page.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  late final PageController _controller;
  final List<Widget> screens = <Widget>[];
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: index);

    screens.add(const HomeScreen());
    screens.add(const GenreScreen());
    screens.add(const FavoriteScreen());
    // screens.add(VideoPage('6_ZtsCEtecA'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // body: screens[index],
      body: PageView(
        controller: _controller,
        children: screens,
        onPageChanged: (value) => setState(() {
          index = value;
        }),
      ),
      bottomNavigationBar:
          // ClipRRect(
          //   borderRadius: const BorderRadius.only(
          //     topLeft: Radius.circular(16),
          //     topRight: Radius.circular(16),
          //   ),
          //   child:
          BottomNavigationBar(
            // backgroundColor: Colors.black87,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
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
            currentIndex: index,
            onTap: (navIndex) {
              setState(() {
                index = navIndex;
                _controller.animateToPage(
                  navIndex,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                );
              });
            },
          ),
      // ),
    );
  }
}

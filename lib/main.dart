import 'package:flutter/material.dart';
import 'package:wedding_invitation/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '대호&지영 결혼식에 초대합니다',
      theme: ThemeData(
        fontFamily: 'Plex',
        scaffoldBackgroundColor: const Color(0xFF313131),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(41, 82, 56, 100),
              textStyle: TextStyle(color: Color(0xFFFFFFFF))),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();

//   void getNext() {
//     current = WordPair.random();
//     notifyListeners();
//   }

//   var favorites = <WordPair>[];

//   void toggleFavorite() {
//     if(favorites.contains(current)) {
//       favorites.remove(current);
//     } else {
//       favorites.add(current);
//     }
//     notifyListeners();
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   var selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     Widget page;
//     switch (selectedIndex) {
//       case 0:
//         page = GeneratorPage();
//         break;
//       case 1:
//         page = FavoritesPage();
//         break;
//       default:
//         throw UnimplementedError('no widget for $selectedIndex');
//     }
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return Scaffold(
//           body: Row(
//             children: [
//               SafeArea(
//                 child: NavigationRail(
//                   extended: constraints.maxWidth >= 600,
//                   destinations: [
//                     NavigationRailDestination(
//                       icon: Icon(Icons.home),
//                       label: Text('Home'),
//                     ),
//                     NavigationRailDestination(
//                       icon: Icon(Icons.favorite),
//                       label: Text('Favorites'),
//                     ),
//                   ],
//                   selectedIndex: selectedIndex,
//                   onDestinationSelected: (value) {
//                     setState(() {
//                       selectedIndex = value;
//                     });
//                   },
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   color: Theme.of(context).colorScheme.primaryContainer,
//                   child: page,
//                 ),
//               ),
//             ],
//           ),
//         );
//       }
//     );
//   }
// }

// class FavoritesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();

//     if(appState.favorites.isEmpty) {
//       return Center(
//         child: Text('No favorites yet.'),
//         );
//     }

//     return ListView(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(20),
//           child: Text('You have ${appState.favorites.length} favorites:'),
//         ),
//         for (var word in appState.favorites)
//           ListTile(
//             leading: Icon(Icons.favorite),
//             title: Text(word.asLowerCase),
//           )
//       ],
//     );
//   }
// }

// class GeneratorPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();
//     var pair = appState.current;

//     IconData icon;
//     if (appState.favorites.contains(pair)) {
//       icon = Icons.favorite;
//     } else {
//       icon = Icons.favorite_border;
//     }

//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           BigCard(pair: pair),
//           SizedBox(height: 10),
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ElevatedButton.icon(
//                 onPressed: () {
//                   appState.toggleFavorite();
//                 },
//                 icon: Icon(icon),
//                 label: Text('Like'),
//               ),
//               SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: () {
//                   appState.getNext();
//                 },
//                 child: Text('Next'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BigCard extends StatelessWidget {
//   const BigCard({
//     super.key,
//     required this.pair,
//   });

//   final WordPair pair;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final style = theme.textTheme.displayMedium!.copyWith(
//       color: theme.colorScheme.onPrimary,
//       );

//     return Card(
//       color: theme.colorScheme.primary,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Text(
//           pair.asLowerCase, 
//           style: style,
//           semanticsLabel: "${pair.first} ${pair.second}",
//           ),
//       ),
//     );
//   }
// }

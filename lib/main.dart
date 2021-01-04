import 'package:flutter/material.dart';

// Import the firebase_core plugin

import 'screens/HomeScreen/HomeScreen.dart';
import 'screens/FeedScreen/FeedScreen.dart';
import 'screens/PostScreen/PostScreen.dart';
import 'screens/ProfileScreen/ProfileScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(App());
}

// class App extends StatefulWidget {
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   // Set default `_initialized` and `_error` state to false
//   bool _initialized = false;
//   bool _error = false;

//   // Define an async function to initialize FlutterFire
//   void initializeFlutterFire() async {
//     try {
//       // Wait for Firebase to initialize and set `_initialized` state to true
//       await Firebase.initializeApp();
//       setState(() {
//         _initialized = true;
//       });
//     } catch (e) {
//       // Set `_error` state to true if Firebase initialization fails
//       setState(() {
//         _error = true;
//       });
//     }
//   }

//   @override
//   void initState() {
//     initializeFlutterFire();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Show error message if initialization failed
//     if (_error) {
//       return MaterialApp(home: Text('Error'));
//     }

//     // Show a loader until FlutterFire is initialized
//     if (!_initialized) {
//       return MaterialApp(home: Text('Loading'));
//     }

//     return MaterialApp(home: Text('Home'));
//   }
// }

class App extends StatelessWidget {
  /// Initialize Firebase
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) return MaterialApp(home: Text('Error'));

          if (snapshot.connectionState == ConnectionState.done)
            return MaterialApp(
              initialRoute: '/',
              title: 'Demo',
              home: HomeScreen(),
              routes: {
                '/feed': (context) => FeedScreen(),
                '/post': (context) => PostScreen(),
                '/profile': (context) => ProfileScreen()
              },
            );

          return WidgetsApp(color: Color(0xFF0D0D0D));
        });
  }
}

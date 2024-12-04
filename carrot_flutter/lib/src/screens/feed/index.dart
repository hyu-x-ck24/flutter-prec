// 95p 오면서 주석처리함

// import 'package:carrot_flutter/src/screens/auth/register.dart';
// import 'package:carrot_flutter/src/screens/feed/show.dart';
// import 'package:carrot_flutter/src/screens/intro.dart';
// import 'package:carrot_flutter/src/screens/shared/data.dart';
// import 'package:carrot_flutter/src/screens/unknown.dart';
// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // 디버그 로고 제거
//       debugShowCheckedModeBanner: false,
//       title: 'Carrot Market',
//       routes: {
//         '/': (context) => const Intro(),
//         '/register': (context) => const Register(),
//       },
//       initialRoute: '/',
//       onGenerateRoute: (settings) {
//         print('onGenerateRoute called with: ${settings.name}');
        
//         if (settings.name?.startsWith('/feed/') ?? false) {
//           try {
//             final id = int.parse(settings.name!.split('/').last);
//             final item = feedList.firstWhere(
//               (e) => e['id'] == id,
//               orElse: () => throw Exception('Item not found'),
//             );
//             return MaterialPageRoute(
//               builder: (context) => FeedShow(item),
//               settings: settings,
//             );
//           } catch (e) {
//             print('Error in onGenerateRoute: $e');
//           }
//         }
        
//         return MaterialPageRoute(
//           builder: (context) => const UnknownScreen(),
//           settings: settings,
//         );
//       },
//       onUnknownRoute: (settings) {
//         return MaterialPageRoute(
//           builder: (context) => const UnknownScreen(),
//           settings: settings,
//         );
//       },
//     );
//   }
// }

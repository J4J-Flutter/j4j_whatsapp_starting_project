import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// The color of the app's surface. This color is used e.g. to fill the
/// background of a button, card, appbar or dialog.
/// https://m3.material.io/components/tabs/specs
const Color kAppSurfaceColor = Color(0xff075E54);

/// The color of objects placed on top of the surface, such as text and icons.
/// https://m3.material.io/components/top-app-bar/specs
const Color kOnSurfaceColor = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        colorScheme: const ColorScheme.light(
          primary: kOnSurfaceColor,
          onPrimary: kAppSurfaceColor,
          surface: kAppSurfaceColor,
          onSurface: kOnSurfaceColor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: const OvalBorder(),
          onPressed: () {},
          child: const Icon(Icons.chat),
        ),
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 8),
            Icon(Icons.more_vert),
            SizedBox(width: 8),
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Placeholder(),
            Placeholder(),
            Placeholder(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Logo / Picture
//               CircleAvatar(
//                 backgroundColor: Colors.red,
//               ),
//               // Group name/Contact name/Phone number + Last message
//               Column(
//                 children: [
//                   Text("Weekend"),
//                   Text("Sofia: Sticker"),
//                 ],
//               ),
//               // Last seen + unseen messages count
//               Column(
//                 children: [
//                   Text("9:49"),
//                   Text("2"),
//                 ],
//               ),
//             ],
//           ),
//           Divider(
//             endIndent: MediaQuery.sizeOf(context).width * 0.08,
//             indent: MediaQuery.sizeOf(context).width * 0.12,
//           ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Logo / Picture
//               CircleAvatar(
//                 backgroundColor: Colors.red,
//               ),
//               // Group name/Contact name/Phone number + Last message
//               Column(
//                 children: [
//                   Text("Weekend"),
//                   Text("Sofia: Sticker"),
//                 ],
//               ),
//               // Last seen + unseen messages count
//               Column(
//                 children: [
//                   Text("9:49"),
//                   Text("2"),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


//! chats

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 25),
        ],
        backgroundColor: Colors.green[800],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('akhil'),
            subtitle: Text('hello'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVyY2VkZXMlMjBjYXJ8ZW58MHx8MHx8&w=1000&q=80'),
            ),
            trailing: Text('1 $index :00 PM'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 50,
      ),
    );
  }
}


//! counter app
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Home());
//   }
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Counter App',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               // 'counter'
//               counter.toString(),
//               style: TextStyle(fontSize: 35),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 FloatingActionButton(
//                   onPressed: () {
//                     setState(() {
//                       counter++;
//                     });
//                   },
//                   child: Icon(Icons.add),
//                 ),
//                 FloatingActionButton(
//                   onPressed: () {
//                     setState(() {
//                       counter--;
//                     });
//                   },
//                   child: Icon(Icons.remove),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

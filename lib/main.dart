import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

/* Toast Message */
// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Toast message'),
//         centerTitle: true ,
//       ),
//       body: Center(
//         child: FlatButton(
//             onPressed: (){
//               flutterToast();
//             },
//             child: Text('Toast'),
//             color: Colors.blue,
//         ),
//       ),
//     );
//   }
// }
//
// void flutterToast (){
//   Fluttertoast.showToast(
//     msg: 'Flutter Show',
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.redAccent,
//     fontSize: 20.0,
//     textColor: Colors.white,
//     toastLength: Toast.LENGTH_SHORT,
//   );
// }

/* Snack Bar */
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: Text('Show me'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(
                'Hellow',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(microseconds: 7000),
            ));
          },
      ),
    );
  }
}

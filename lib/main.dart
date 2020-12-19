import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Esewa Integration by visionx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homepage(),
    );
  }
}

// import 'package:esewa_pnp/esewa.dart';
// import 'package:flutter/material.dart';

// import 'package:esewa_pnp/esewa_pnp.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   ESewaPnp _esewaPnp;
//   ESewaConfiguration _configuration;

//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();

//     _configuration = ESewaConfiguration(
//       clientID: "JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R",
//       secretKey: "BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==",
//       environment: ESewaConfiguration.ENVIRONMENT_TEST,
//     );
//     _esewaPnp = ESewaPnp(configuration: _configuration);
//   }

//   int _amount = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Color.fromRGBO(65, 161, 36, 1),
//       ),
//       home: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: Text("ESewa PNP"),
//           elevation: 0,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 keyboardType: TextInputType.number,
//                 onChanged: (value) {
//                   setState(() {
//                     _amount = int.parse(value);
//                   });
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Enter amount",
//                 ),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Container(
//                 width: double.infinity,
//                 child: RaisedButton(
//                   elevation: 0,
//                   color: Color.fromRGBO(65, 161, 36, 1),
//                   onPressed: () {
//                     pay();
//                   },
//                   child: Text(
//                     "Pay",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> pay() async {
//     ESewaPayment eSewaPayment = ESewaPayment(
//       amount: _amount,
//       productName: "Test Product",
//       productID: "abc123001",
//       callBackURL: "https://www.techsansaar.com.np/",
//     );
//     try {
//       final res = await _esewaPnp.initPayment(payment: eSewaPayment);
//       print(res.toString());
//       _scaffoldKey.currentState.showSnackBar(
//           _buildSnackBar(Color.fromRGBO(65, 161, 36, 1), res.message));
//     } on ESewaPaymentException catch (e) {
//       _scaffoldKey.currentState
//           .showSnackBar(_buildSnackBar(Colors.red, e.message));
//     }
//   }

//   Widget _buildSnackBar(Color color, String msg) {
//     return SnackBar(
//       backgroundColor: color,
//       content: Text(msg),
//     );
//   }
// }

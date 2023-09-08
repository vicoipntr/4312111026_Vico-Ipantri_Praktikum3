import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ExampleAlert(),
    );
  }
}

//Text
class ExampleText extends StatelessWidget {
  const ExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Text("Ini Text",
          style: TextStyle(
              color: Colors.blue,
              backgroundColor: Colors.black,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold)),
    );
  }
}

//Icons
class ExampleIcon extends StatelessWidget {
  const ExampleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Example Icons"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
              ),
              Column(
                children: <Widget>[Icon(Icons.phone), Text('Phone')],
              ),
              Column(
                children: <Widget>[Icon(Icons.book), Text('Book')],
              ),
            ],
          ),
        ));
  }
}

//Container
class ExampleContainer extends StatelessWidget {
  const ExampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Container"),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: Colors.blue),
          child: Text(
            "VICO",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )),
    );
  }
}

//SizedBox
class ExampleSizedBox extends StatelessWidget {
  const ExampleSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ExampleSizedBox"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Vico",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Ipantri",
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ));
  }
}

//Button
class ExampleButton extends StatelessWidget {
  const ExampleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button"),
        ),
        body: Column(
          children: <Widget>[
            ElevatedButton(child: Text("Elevated Button"), onPressed: () {}),
            MaterialButton(
                color: Colors.lime,
                child: Text("Material Button"),
                onPressed: () {}),
            FloatingActionButton(
                backgroundColor: Colors.lightGreenAccent,
                child: Text("Float Button"),
                onPressed: () {}),
          ],
        ));
  }
}

//TextFromField
class ExampleTextFromField extends StatelessWidget {
  const ExampleTextFromField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Example Text Field"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () {},
              )
            ]),
          ),
        ));
  }
}

class ExampleAlert extends StatelessWidget {
  const ExampleAlert({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white,
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Men Wearing Jackets'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      'https://media.tenor.com/KLthxRXiWp8AAAAC/google-jacket.gif',
                      width: 200, // Sesuaikan dengan ukuran yang Anda inginkan
                      height: 200,
                      fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
                    ),
                    Text(
                      'This is a men wearing jackets',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
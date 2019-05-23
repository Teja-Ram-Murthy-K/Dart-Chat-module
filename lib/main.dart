import 'package:flutter/material.dart';
import 'chat.dart';
import 'package:chat_app/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _controller = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Input User Name'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'User Name'
              ),
            ),
          ),

          RaisedButton(color: Colors.green,onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder) =>WhatsAppHome(_controller.text)  ));//ChatPage(_controller.text)
          },
          child: Text("Complete", style: TextStyle(color: Colors.white),),)
        ],
      )
    );
  }
}

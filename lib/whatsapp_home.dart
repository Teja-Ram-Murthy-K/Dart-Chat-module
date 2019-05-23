import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WhatsAppHome extends StatefulWidget {
  WhatsAppHome(this._userName);

  final String _userName;

  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Users',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontFamily: 'Raleway-Bold',
          ),
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 0.7,
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),

      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new ChatScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/call.dart';
import 'package:whatsapp_clone/camera.dart';
import 'package:whatsapp_clone/chats.dart';
import 'package:whatsapp_clone/status.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Camera(),
          chats(),
          Status(),
          Call(),
        ],
      ),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              child: Icon(Icons.camera_alt),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 23, 179, 28),
              onPressed: () {},
            )
          : _tabController.index == 1
              ? FloatingActionButton(
                  child: Icon(Icons.message),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 23, 179, 28),
                  onPressed: () {})
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: FloatingActionButton(
                              child: Icon(Icons.edit), onPressed: () {}),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FloatingActionButton(
                            child: Icon(Icons.camera_alt),
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 23, 179, 28),
                            onPressed: () {}),
                      ],
                    )
                  : FloatingActionButton(
                      child: Icon(Icons.call),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 23, 179, 28),
                      onPressed: () {}),
    );
  }
}

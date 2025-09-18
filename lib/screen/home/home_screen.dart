import 'package:flutter/material.dart';
import 'package:whatapp_clone/screen/home/calls/calls_screen.dart';
import 'package:whatapp_clone/screen/home/camera/camera_screen.dart';
import 'package:whatapp_clone/screen/home/chats/chats_screen.dart';
import 'package:whatapp_clone/screen/home/status/status_screen.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 90,
          title: UiHelper.CustomText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/Search.png"),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}

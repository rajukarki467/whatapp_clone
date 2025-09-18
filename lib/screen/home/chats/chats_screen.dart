import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrContent = [
      {
        "images":
            "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Pawan",
        "lastmsg": "Hi Raju",
        "time": "05:45 am",
        "msg": "7",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
        "name": "Riya",
        "lastmsg": "See you tomorrow!",
        "time": "09:12 pm",
        "msg": "2",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde",
        "name": "Aarav",
        "lastmsg": "Where are you?",
        "time": "11:30 am",
        "msg": "5",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1520813792240-56fc4a3765a7",
        "name": "Sneha",
        "lastmsg": "Good night 🌙",
        "time": "10:05 pm",
        "msg": "1",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
        "name": "Rahul",
        "lastmsg": "Call me asap",
        "time": "03:15 pm",
        "msg": "4",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde",
        "name": "Priya",
        "lastmsg": "Lunch?",
        "time": "01:20 pm",
        "msg": "3",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
        "name": "Manish",
        "lastmsg": "Let’s meet at 5",
        "time": "04:50 pm",
        "msg": "6",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d",
        "name": "Anjali",
        "lastmsg": "Got it ✅",
        "time": "07:40 am",
        "msg": "8",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
        "name": "Deepak",
        "lastmsg": "Thanks bro!",
        "time": "06:10 pm",
        "msg": "9",
      },
      {
        "images":
            "https://images.unsplash.com/photo-1527980965255-d3b416303d12",
        "name": "Meera",
        "lastmsg": "Ok, see you",
        "time": "02:25 pm",
        "msg": "2",
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"]?.toString() ??
                          "https://via.placeholder.com/150",
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: arrContent[index]['name'].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: arrContent[index]['lastmsg'].toString(),
                    height: 13,
                    color: Color(0xff889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                        text: arrContent[index]['time'].toString(),
                        height: 12,
                        color: Color(0xff026500),
                      ),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color.fromARGB(255, 27, 182, 95),
                        child: UiHelper.CustomText(
                          text: arrContent[index]['msg'].toString(),
                          height: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xff008665),
        child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
      ),
    );
  }
}

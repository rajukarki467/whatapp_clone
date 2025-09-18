import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var contactContent = [
      {
        "img": "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
        "name": "Anisha",
        "status": "Busy",
      },
      {
        "img": "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
        "name": "Narayan",
        "status": "cool",
      },
      {
        "img": "https://images.unsplash.com/photo-1544723795-3fb6469f5b39",
        "name": "Subarna",
        "status": "call",
      },
      {
        "img": "https://images.unsplash.com/photo-1544005313-94ddf0286df2",
        "name": "Pawan",
        "status": "Busy",
      },
      {
        "img": "https://images.unsplash.com/photo-1524504388940-b1c1722653e1",
        "name": "Rohit",
        "status": "Offline",
      },
      {
        "img": "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
        "name": "Anisha",
        "status": "Busy",
      },
      {
        "img": "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
        "name": "Narayan",
        "status": "cool",
      },
      {
        "img": "https://images.unsplash.com/photo-1544723795-3fb6469f5b39",
        "name": "Subarna",
        "status": "call",
      },
      {
        "img": "https://images.unsplash.com/photo-1544005313-94ddf0286df2",
        "name": "Pawan",
        "status": "Busy",
      },
      {
        "img": "https://images.unsplash.com/photo-1524504388940-b1c1722653e1",
        "name": "Rohit",
        "status": "Offline",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
          text: "Select Contact",
          height: 16,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  contactContent[index]['img'].toString(),
                ),
              ),
              title: UiHelper.CustomText(
                text: contactContent[index]['name'].toString(),
                height: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
              subtitle: UiHelper.CustomText(
                text: contactContent[index]['status'].toString(),
                height: 14,
              ),
            );
          },
          itemCount: contactContent.length,
        ),
      ),
    );
  }
}

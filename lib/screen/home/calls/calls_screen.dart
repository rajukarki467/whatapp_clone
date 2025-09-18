import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var callContent = [
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Pawan",
        "calltime": "25 min  ago",
      },
      {
        "img": "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
        "name": "Riya",
        "calltime": "5 min  ago",
      },
      {
        "img": "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde",
        "name": "Simran",
        "calltime": "20 min  ago",
      },
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "name": "Pawan",
        "calltime": "25 min  ago",
      },
      {
        "img": "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
        "name": "Riya",
        "calltime": "5 min  ago",
      },
      {
        "img": "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde",
        "name": "Simran",
        "calltime": "20 min  ago",
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      callContent[index]['img'].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]['name'].toString(),
                    height: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]['calltime'].toString(),
                    height: 16,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call, color: Color(0xff00a884)),
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}

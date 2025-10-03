import 'package:flutter/material.dart';
import 'package:roshan/feature/theme/app_color.dart';

import '../screen/specific_chat_screen.dart';

class ChatsWidget extends StatelessWidget {
  final String name,msg,num,image;
  const ChatsWidget({super.key, required this.name, required this.msg, required this.num, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => SpecificChatScreen(image:image,name:name),
        ),
      );
    },
      child: ListTile(
      leading: Image(image: AssetImage(image)),
        title: Text(name),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Text(msg),
        ),
        subtitleTextStyle: TextStyle(fontSize: 14,color: Color(0xff20222C)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("الان"),
            CircleAvatar(radius: 10,
                backgroundColor: AppColor.purpleColor,
              child: Text(num,style: TextStyle(color: Colors.white
              ,fontSize: 10),),)
          ],
        ),
      ),
    );
  }
}

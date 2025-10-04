import 'package:flutter/material.dart';
import 'package:roshan/feature/theme/app_color.dart';

import '../screen/specific_chat_screen.dart';

class ChatsWidget extends StatelessWidget {
  final String name,msg,total,image,time;
  const ChatsWidget({super.key, required this.name, required this.msg,
    required this.total, required this.image,
   required this.time});

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
        contentPadding: EdgeInsets.zero, // removes outer padding
      //  visualDensity: VisualDensity.compact, // optional: tightens vertical space
      //  minLeadingWidth: 0,
        minVerticalPadding: 0.0,
        leading: Image(image: AssetImage(image)),
        title: Text(name),
        subtitle: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Text(msg),
        ),
        subtitleTextStyle: TextStyle(fontSize: 14,color: Color(0xff20222C)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(time,style: TextStyle(color:  Color(0xFF1E1E2C).withOpacity(0.3)),),
            CircleAvatar(radius: 10,
                backgroundColor: AppColor.greenColor,
              child: Text(total,style: TextStyle(color: Colors.white
              ,fontSize: 10),),)
          ],
        ),
      ),
    );
  }
}

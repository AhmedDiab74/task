
import 'package:flutter/material.dart';
import 'package:task/widgets/online_widget.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key, required this.isOnline,
  });
  final bool isOnline;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap: () {},
          child:  Stack(
            children: [
              const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile.png')),
              Positioned(
                left: 50,
                top: 50,
                child: Visibility(
                  visible:isOnline ,
                  child: const OnlineWidget(),
                ),
              )
            ],
          ),
        ));
  }
}

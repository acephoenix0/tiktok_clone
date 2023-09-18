import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class VideoComments extends StatefulWidget {
  const VideoComments({super.key});

  @override
  State<VideoComments> createState() => _VideoCommentsState();
}

class _VideoCommentsState extends State<VideoComments> {
  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.size16),
      ),
      clipBehavior: Clip.hardEdge,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('22796 comments'),
          actions: [
            IconButton(
              onPressed: _onClosePressed,
              icon: const FaIcon(
                FontAwesomeIcons.xmark,
              ),
            ),
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.size10, horizontal: Sizes.size16),
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 18,
                  child: Text('웅'),
                ),
                Gaps.h10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '웅',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size14,
                            color: Colors.grey.shade500),
                      ),
                      Gaps.v3,
                      const Text(
                          'That\'s not it I\'ve seen the same thing but also in a cave.')
                    ],
                  ),
                ),
                Gaps.h10,
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.heart,
                      color: Colors.grey.shade500,
                      size: Sizes.size20,
                    ),
                    Gaps.v2,
                    Text(
                      '52.2K',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            );
          },
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) {
            return Gaps.v20;
          },
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey.shade500,
                child: const Text(
                  '웅',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

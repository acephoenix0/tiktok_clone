import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;

  List<Color> colors = [Colors.blue, Colors.teal, Colors.yellow, Colors.pink];

  void _onPageChanged(int page) {
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      colors.addAll([Colors.blue, Colors.teal, Colors.yellow, Colors.pink]);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: _onPageChanged,
      itemCount: _itemCount,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          color: colors[index],
          child: Center(
              child: Text(
            '$index',
            style: const TextStyle(fontSize: Sizes.size60),
          )),
        );
      },
    );
  }
}

import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';

class playvide extends StatefulWidget {
  final String title = "sdf";
  final String url;
  const playvide(this.url, {super.key});

  @override
  State<playvide> createState() => playvide1();
}

// ignore: camel_case_types
class playvide1 extends State<playvide> {
  late CachedVideoPlayerController _controller;
  @override
  void initState() {
    _controller = CachedVideoPlayerController.network(widget.url)
      ..initialize().then((value) {
        _controller.setLooping(true);
        _controller.runtimeType;
        _controller.play();

/*         _controller.setPlaybackSpeed(1); */
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(height: double.infinity, child: CachedVideoPlayer(_controller)),
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: TextButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: const Text(""),
        ),
      )
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class videpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(scrollDirection: Axis.vertical, children: const [
      playvide(
          "https://watery-quill-felidae.glitch.me/%E4%B8%B4%E6%97%B6%E5%AD%98%E6%94%BE%E6%96%87%E4%BB%B6/vides-test/0.mp4"),
      playvide(
          "https://watery-quill-felidae.glitch.me/%E4%B8%B4%E6%97%B6%E5%AD%98%E6%94%BE%E6%96%87%E4%BB%B6/vides-test/vide_4.mp4")
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:getx_cli_exm/app/modules/web_video_pla/web_video_pla_controller.dart';
import 'package:video_player/video_player.dart';

class WebVideoPlaView extends StatefulWidget {
  @override
  _WebVideoPlaViewState createState() => _WebVideoPlaViewState();
}

class _WebVideoPlaViewState extends State<WebVideoPlaView> {
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      // closedCaptionFile: _loadCaptions(),
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('WebVideoPlaView'),
        centerTitle: true,
      ),
      body: Container(
        height: 600,
        child:  Column(
          children: <Widget>[
            Container(padding: const EdgeInsets.only(top: 20.0)),
            const Text('With remote mp4'),
            Container(
              height: 300,
              padding: const EdgeInsets.all(20),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(_controller),
                    ClosedCaption(text: _controller.value.caption.text),
                    // _ControlsOverlay(controller: _controller),
                    VideoProgressIndicator(_controller, allowScrubbing: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  
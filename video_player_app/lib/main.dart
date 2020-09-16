import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

String vedioUrl="https://www.youtube.com/watch?v=fUv9gO8t8b4";
String vedioUrl2="https://www.youtube.com/embed/BE9ATY2Ygas";
YoutubePlayerController _controller ;

  @override
  void initState() {
    super.initState();
_controller=YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(vedioUrl2),
  flags: YoutubePlayerFlags(
    autoPlay: false,
    mute: true
  )
);

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('widget.title'),
      ),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
              ),
              SizedBox(height: 20,),
              Container(
                  child: WebView(
                    initialUrl: Uri.dataFromString('<html><body><iframe src="https://www.youtube.com/embed/abc"></iframe></body></html>', mimeType: 'text/html').toString(),
                    javascriptMode: JavascriptMode.unrestricted,
                  )),
            ],
          ),
        ),
      )

    );
  }
}


/*
class ExampleVideo extends StatefulWidget {
  @override
  _ExampleVideoState createState() => _ExampleVideoState();
}

class _ExampleVideoState extends State<ExampleVideo> {
  final String urlToStreamVideo = 'http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_60fps_normal.mp4';
  final VlcPlayerController controller = new VlcPlayerController(
    // Start playing as soon as the video is loaded.

      onInit: (){
         // controller.play();
      }
  );
  final int playerWidth = 640;
  final int playerHeight = 360;

  @override
  Widget build(BuildContext context) {
    return
         SizedBox(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: new VlcPlayer(
              aspectRatio: 16 / 9,
              url: urlToStreamVideo,
              controller: controller,
              placeholder: Center(child: CircularProgressIndicator()),
            )
        );

  }
}
*/

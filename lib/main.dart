import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void showMusicSource(BuildContext ctx) {
  Navigator.of(ctx).push(PageRouteBuilder(
      opaque: false,
      pageBuilder: (ctx, animation, secondaryAnimation) => Scaffold(
            backgroundColor: Colors.black.withOpacity(0.5),
            body: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 300,
                    width: 350,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 60, 60, 59),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Music Source",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.music_note, color: Colors.white),
                                SizedBox(width: 25),
                                Text(
                                  "Apple Music",
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                Spacer(),
                                Visibility(
                                    visible: true, child: Icon(Icons.check, color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.music_note, color: Colors.white),
                                SizedBox(width: 25),
                                Text(
                                  "Spotify",
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                Spacer(),
                                Visibility(
                                    visible: false, child: Icon(Icons.check, color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.music_note, color: Colors.white),
                                SizedBox(width: 25),
                                Text(
                                  "No Music",
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                Spacer(),
                                Visibility(
                                    visible: false, child: Icon(Icons.check, color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )));
}

void showMusicPlayer(BuildContext ctx) {
  Navigator.of(ctx).push(PageRouteBuilder(
      opaque: false,
      pageBuilder: (ctx, animation, secondaryAnimation) => Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: Stack(children: <Widget>[
            Container(
              width: MediaQuery.of(ctx).size.width,
              height: MediaQuery.of(ctx).size.height,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    height: 510,
                    width: 350,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                height: 70,
                                width: 70,
                                child: Icon(
                                  Icons.music_note,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  "--",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "--",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.grey,
                                    size: 35,
                                  ),
                                  onPressed: () => showMusicSource(ctx)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ClipOval(
                              child: Material(
                                color: Colors.grey.withOpacity(0.5),
                                child: InkWell(
                                  child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Icon(
                                        Icons.fast_rewind,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  onTap: () {},
                                ),
                              ),
                            ),
                            ClipOval(
                              child: Material(
                                color: Colors.grey.withOpacity(0.5),
                                child: InkWell(
                                  child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 40,
                                      )),
                                  onTap: () {},
                                ),
                              ),
                            ),
                            ClipOval(
                              child: Material(
                                color: Colors.grey.withOpacity(0.5),
                                child: InkWell(
                                  child: SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Icon(
                                        Icons.fast_forward,
                                        color: Colors.white,
                                        size: 30,
                                      )),
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          height: 200,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Your Playlists",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 100,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(right: 20.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  color: Colors.white.withOpacity(0.2),
                                                ),
                                                height: 65,
                                                width: 65,
                                                child: Icon(
                                                  Icons.music_note,
                                                  color: Colors.grey,
                                                  size: 35,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "data",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Open Apple Music",
                              style: TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]))));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () => showMusicPlayer(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

//80min

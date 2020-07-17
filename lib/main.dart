import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: Player(),
    );
  }
}

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.white.withOpacity(0.4),
                child: Icon(
                  Icons.stop,
                  size: 20.0,
                  color: Colors.white,
                ),
                shape: CircleBorder(),
              ),
              Text(
                "Action 1 / 6",
                style: TextStyle(color: Colors.white),
              ),
              RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.white.withOpacity(0.4),
                child: Icon(
                  Icons.queue_music,
                  size: 20.0,
                  color: Colors.white,
                ),
                shape: CircleBorder(),
              ),
              RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.white.withOpacity(0.4),
                child: Icon(
                  Icons.library_music,
                  size: 20.0,
                  color: Colors.white,
                ),
                shape: CircleBorder(),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black.withOpacity(0.2),
            ),
            height: 550,
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
                              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
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
                        onPressed: null,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Slider(
                    value: 0.0,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "--:--",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "--:--",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
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
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Swipe left to complete",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  ),
                  onPressed: null)
            ],
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

// 20Mins first draft
// 20Mins second draftﬁ

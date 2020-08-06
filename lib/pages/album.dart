import 'package:flutter/material.dart';

import '../discography.dart';


class AlbumPage extends StatefulWidget {
  static const routeName = '/album';
  AlbumPage({Key key, this.id}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final int id;

  @override
  _AlbumPageState createState() => _AlbumPageState(id);
}

class _AlbumPageState extends State<AlbumPage> {

  final discography = getDiscography();

  var id;
  _AlbumPageState(int id){
    this.id = id;
  }

  @override
  Widget build(BuildContext context) {
    var album;
    for(var i=0; i < discography.length; i++){
      if(discography[i].id == id) {
        album = discography[i];
      }
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the AlbumPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(album.description),
      ),
      body: Column (
        children: <Widget>[
          Container(
            height: 400.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: album.imageUrl,
                fit: BoxFit.cover,
              )
            )
          ),
          Expanded (
            child: ListView.separated (
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(10.0),
              itemCount: album.songs.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        album.songs[index].title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "duration: " + album.songs[index].duration.toString() + " seconds",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ]
                  )
                );
              }
            )
          )
        ]
      )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

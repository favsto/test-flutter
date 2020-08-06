import 'package:flutter/cupertino.dart';
import 'package:mostro/model/song.dart';

class Album{
  final int id;
  final AssetImage imageUrl;
  final int year;
  final String description;
  final String type;
  final List<Song> songs;

  Album(
    this.id, 
    this.imageUrl, 
    this.year, 
    this.description,
    this.type,
    this.songs,
  );
}
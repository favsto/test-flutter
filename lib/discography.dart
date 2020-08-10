import 'package:flutter/cupertino.dart';

import 'model/album.dart';
import 'model/song.dart';

getDiscography(){
  return [
    new Album(
      6, 
      new AssetImage("assets/tre_stronzi.jpeg"), 
      2012, 
      "Tre stronzi", 
      "mixtape", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]
    ),
    new Album(
      0, 
      new AssetImage("assets/la_nave_fantasma.jpeg"), 
      2014, 
      "La nave fantasma", 
      "studio", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]
    ),
    new Album(
      1, 
      new AssetImage("assets/ogni_maledetto_giorno.jpeg"), 
      2017, 
      "Ogni maledetto giorno", 
      "studio", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]),
    new Album(
      2, 
      new AssetImage("assets/sinceramente_mostro.jpeg"), 
      2020, 
      "Sinceramente mostro", 
      "studio", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]),
    new Album(
      3, 
      new AssetImage("assets/the_illest_vol_1.jpeg"), 
      2015, 
      "The Illest Vol. 1", 
      "mixtape", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]),
    new Album(
      4, 
      new AssetImage("assets/the_illest_vol_2.jpeg"), 
      2019, 
      "The Illest Vol. 2", 
      "mixtape", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]),
    new Album(
      5, 
      new AssetImage("assets/scusate_per_il_sangue.jpeg"), 
      2014, 
      "Scusate per il sangue", 
      "EP", 
      [
        new Song(0, "song 1", 100),
        new Song(1, "song 2", 100),
        new Song(2, "song 3", 100),
        new Song(3, "song 4", 100),
      ]),
  ];
}
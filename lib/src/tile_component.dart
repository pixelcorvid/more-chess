import 'package:angular/angular.dart';

import 'package:chessjam_2018_app/src/tile.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'tile',
  styleUrls: ['tile_component.css'],
  template: r'''
    tile
  ''',
  directives: const [coreDirectives],
  providers: const [],
)
class TileComponent {

  TileType originalType;

  @Input()
  Tile tile;

  @HostBinding('class.black')
  bool get isBlack => tile.tileType == TileType.black;

  @HostBinding('class.white')
  bool get isWhite => tile.tileType == TileType.white;

  @HostBinding('class.lava')
  bool get isLava => tile.tileType == TileType.lava;

  @HostListener('click', [])
  onClick() {
    switch(tile.tileType) {
      case TileType.lava:
        tile.tileType = originalType;
        break;
      case TileType.black:
        originalType = TileType.black;
        tile.tileType = TileType.lava;
        break;
      case TileType.white:
        originalType = TileType.white;
        tile.tileType = TileType.lava;
        break;
    }
  }
}

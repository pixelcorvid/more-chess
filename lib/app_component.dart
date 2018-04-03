import 'package:angular/angular.dart';

import 'package:chessjam_2018_app/src/tile.dart';
import 'package:chessjam_2018_app/src/tile_component.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [coreDirectives, TileComponent],
  providers: const [],
)
class AppComponent {
  final Board board = new Board.generateBoard();
  BoardState boardState = BoardState.top;

  bool get viewIsPlayer1 => boardState == BoardState.playerOne;
  bool get viewIsPlayer2 => boardState == BoardState.playerTwo;

  setBoardState(String boardStateName) {
    switch(boardStateName) {
      case "p1":
        boardState = BoardState.playerOne;
        break;
      case "p2":
        boardState = BoardState.playerTwo;
        break;
      case "top":
      default:
        boardState = BoardState.top;
        break;
    }
  }

  List<Tile> get tiles {
    List<Tile> out = [];
    for(List<Tile> row in board.boardGrid) {
      for(Tile tile in row) {
        out.add(tile);
      }
    }
    return out;
  }
  AppComponent();
  // Nothing here yet. All logic is in TodoListComponent.
}

enum BoardState {
  top,
  playerOne,
  playerTwo,
}

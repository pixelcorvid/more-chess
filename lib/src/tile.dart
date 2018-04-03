
class Board {
  static const int gridSquareSize = 8;

  List<List<Tile>> boardGrid = new List<List<Tile>>();

  Board.generateBoard() {
    boardGrid = new List<List<Tile>>();
    bool tileBlack = false;
    for(int y = 0; y < gridSquareSize; y++) {
      List<Tile> tiles = new List<Tile>();
      for(int x = 0; x < gridSquareSize; x++) {
        TileType tileState = (tileBlack?TileType.black:TileType.white);
        tiles.add(new Tile(tileState));
        tileBlack = !tileBlack; // Toggle tile color per tile
      }
      tileBlack = !tileBlack; // Shift tile color per Column
      boardGrid.add(tiles);
    }
  }

}

enum TileType {
  black,
  white,
  lava,
}
enum TileState {
  inactive,
  active,
  selected,
}

class Tile {
  TileType tileType;
  TileState tileState = TileState.inactive;

  Tile(this.tileType);
}

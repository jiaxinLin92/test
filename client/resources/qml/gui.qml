import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0

Item {
  id: root

  signal initNewGame( size board_size, int mode )
  signal placeStone( point pos )


  Image{
      fillMode: Image.Tile
      anchors.fill: parent
      source: "../gfx/tokidoki-hello-kitty.jpg"
  }


  SwipeArea {
    anchors.fill: parent

    onSwipe: {

      switch(direction) {
      case "left":
        root.state = "game_board"
        break;
      case "right":
        root.state = ""
        break;
      }
    }

    NewGamePage {
      id: new_game
      anchors.fill: parent
      anchors.margins: 40

      onInitNewGame: root.state = "game_board"
      Component.onCompleted: initNewGame.connect(root.initNewGame)
    }

    GameBoardPage{
      id: game_board
      visible: false
      anchors.fill: parent
      anchors.margins: 40

      Component.onCompleted: placeStone.connect(root.placeStone)
    }
  }
  states: [
    State{ name: "game_board";
      PropertyChanges { target: new_game; visible: false }
      PropertyChanges { target: game_board; visible: true }
    }
  ]


//  state: "game_board"
}


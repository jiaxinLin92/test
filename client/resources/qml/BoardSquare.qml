import QtQuick 2.0

Item {
  id: root

  signal placeStone( point pos )

  // Horizontal Line
  Rectangle {
    anchors.left:  position.x === 0 ? parent.horizontalCenter : parent.left
    anchors.right: position.x === go.boardSize.x-1 ? parent.horizontalCenter : parent.right
    anchors.verticalCenter: parent.verticalCenter
    color: "black"; width: parent.width; height:1
  }

  // Vertical Line
  Rectangle {
    anchors.top:    position.y === 0 ? parent.verticalCenter : parent.top
    anchors.bottom: position.y === go.boardSize.y-1 ? parent.verticalCenter : parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    color: "black"; height: parent.height; width:1
  }

  // Center markings
  Rectangle {
    width: height
    height:  parent.width * 2/8
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    color: "black"
    visible: {
      if(go.boardSize.x === 9)
        ((position.x+2) % 4 === 0) && ((position.y+2) % 4 === 0) ? true : false
      else if(go.boardSize.x === 19)
        ((position.x+3) % 6 === 0) && ((position.y+3) % 6 === 0) ? true : false
      else
        false
    }

    border.color: "black"
    border.width: 1
    radius: width * 0.5
  }

  // Piece marking
  Rectangle {
    width: height
    height:  parent.width * 3/4
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter

    visible: ( stone !== go.noStone || mouse_area.containsMouse === true )? true : false

    border.color: "black"
    border.width: 1
    radius: width * 0.5

    function stoneColor() {
      if(mouse_area.containsMouse === true && stone === go.noStone)
        return go.turn === go.blackStone ? "black" : "white"
      else
        return stone === go.blackStone? "black" : "white"
    }


    Component.onCompleted: color = Qt.binding(stoneColor)
  }

  MouseArea {
    id: mouse_area
    anchors.fill: parent
    hoverEnabled: true
    focus: true

    onClicked: {
      root.placeStone( position );
    }
  }

}


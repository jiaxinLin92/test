import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0

Item {
  id: root

  signal placeStone( point pos )

  GridLayout {
    anchors.fill: parent
    columns: go.boardSize.x
    rows: go.boardSize.y
    columnSpacing: 0
    rowSpacing: 0

    Repeater {
      model: VisualDataModel {
        model: go
        delegate: BoardSquare {
          Layout.fillHeight: true
          Layout.fillWidth: true

          Component.onCompleted: placeStone.connect(root.placeStone)
        }
      }

    }
  }
}

import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0



/////////////////////////////////////////

Item {
  id: root

  signal placeStone( point pos )

  function getTurnText() {

    var text
    switch(go.turn) {
      case go.noStone:    text = "None";  break
      case go.whiteStone: text = "White"; break
      case go.blackStone: text = "Black"; break
    }
    return text
  }

  function getModeText() {

    var text
    switch(go.gameMode) {
      case go.gameModeVsPlayer: text = "vs. Player"; break
      case go.gameModeVsAi:     text = "vs. AI"; break
      case go.gameModeAi:       text = "AI vs. AI"; break
    }
    return text
  }

  RowLayout {
    anchors.fill: parent
    anchors.margins: 50

    BoardView {
      Layout.fillHeight: true
      Layout.preferredWidth: height

      Component.onCompleted: placeStone.connect(root.placeStone)
    }

    ColumnLayout {
      Layout.fillWidth: true
      Layout.fillHeight: true
      Text{
        Layout.alignment: Qt.AlignLeft
        text: getModeText()
        font.family: "Helvetica";
        font.pointSize: 12;
        font.bold: true
      }

      RowLayout {
        Layout.fillHeight: true
        Layout.fillWidth: true

        Item {
          width: 20
        }

        GridLayout {
          Layout.fillWidth: true
          columns: 2

          Text{
            text: "Handicap Black: "
          }
          Text{
            text: "0"
          }

          Text{
            text: "Handicap White: "
          }
          Text{
            text: "6.5 komi"
          }

          Text {
              text: "Turn: "
          }
          Text {

              Component.onCompleted: text = getTurnText()
          }

          Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

          Button {
              id: button1
              x: 0
              y: 56
              text: qsTr("go back")
              onClicked: {



                         }
                  }
                }

        }
      }
      Item {
        Layout.fillHeight: true
      }
    }
  }

}


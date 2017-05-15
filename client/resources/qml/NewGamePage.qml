import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0

Item {
  id: root

  signal initNewGame( size board_size, int mode )


  function getBoardSize() {
    if(     rb_5x5.checked)   return Qt.size(5,5)
    else if(rb_9x9.checked)   return Qt.size(9,9)
    else if(rb_19x19.checked) return Qt.size(19,19)
    else                      return Qt.size(0,0)
  }

  ColumnLayout {
    anchors.fill: parent

    spacing: 20

    Text{
        color: "#ba6241"
      Layout.alignment: Qt.AlignCenter
      font.family: "Helvetica";
      font.pointSize: 25
      font.bold: true

      text: "Start a new game of Go!"
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      style: Text.Outline
      wrapMode: Text.WrapAnywhere
    }
    Item {

      Layout.alignment: Qt.AlignCenter
      Layout.fillHeight: true
      Layout.fillWidth: true
      ExclusiveGroup { id: boardSizeGroup }
      RowLayout {
        anchors.fill: parent

        Text { text: "Board size: " }
        RadioButton{
          id: rb_5x5
          text: "5x5"
          checked: true
          exclusiveGroup: boardSizeGroup
        }
        RadioButton{
          id: rb_9x9
          text: "9x9"
          checked: false
          exclusiveGroup: boardSizeGroup
        }
        RadioButton{
          id: rb_19x19
          text: "19x19"
          checked: false
          exclusiveGroup: boardSizeGroup
        }
      }
    }
    Item {

      Layout.alignment: Qt.AlignCenter
      Layout.fillHeight: true
      Layout.fillWidth: true

      RowLayout {
        anchors.fill: parent

        Item {
          Layout.fillHeight: true
          Layout.fillWidth: true

          Button{
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            width: Math.min( parent.width, parent.height )
            height: width

            text: "vs. Player"
            onClicked: {
              root.initNewGame(
                    getBoardSize(),
                    go.gameModeVsPlayer)
              root.state = "game_board"
            }
          }
        }

        Item {
          Layout.fillHeight: true
          Layout.fillWidth: true

          Button{
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            width: Math.min( parent.width, parent.height )
            height: width

            text: "vs. AI"
            onClicked: {
              root.initNewGame(
                    getBoardSize(),
                    go.gameModeVsAi)
              root.state = "game_board"
            }
          }
        }

        Item {
          Layout.fillHeight: true
          Layout.fillWidth: true

          Button{
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            width: Math.min( parent.width, parent.height )
            height: width

            text: "AI vs. AI"
            onClicked: {
              root.initNewGame(
                    getBoardSize(),
                    go.gameModeAi)
              root.state = "game_board"
            }
          }
        }
      }
    }
  }
}


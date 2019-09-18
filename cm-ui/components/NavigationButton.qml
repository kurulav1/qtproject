import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import assets 1.0


Item {
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text
    signal navigationButtonClicked()
    property color hoverColour: Style.colourNavigationBarBackground

    states: [
    State {
            name: "hover"
            PropertyChanges {
                target: background
                color: hoverColour
            }
        }
    ]
    width: parent.width
 height: Style.heightNavigationButton

Rectangle {

     id: background
     anchors.fill: parent
     color: Style.colourNavigationBarBackground

     Row {
         Text {
             id: textIcon
             width: Style.widthNavigationButtonIcon
             height: Style.heightNavigationButtonIcon
             font {
                 family: Style.fontAwesome
                 pixelSize: Style.pixelSizeNavigationBarIcon
             }
             color: Style.colourNavigationBarFront
             text: "\uf11a"
             verticalAlignment: Text.AlignVCenter
             horizontalAlignment: Text.AlignHCenter

         }

         Text {
             id:textDescription
             width: Style.widthNavigationButtonDescription
             height: Style.heightNavigationButtonDescription

             color: Style.colourNavigationBarFront
             text : "SET ME!!"
             verticalAlignment: Text.AlignVCenter
             font.pixelSize: Style.pixelSizeNavigationBarText
         }
     }

     MouseArea {
         anchors.fill: parent
         cursorShape: Qt.PointingHandCursor
         hoverEnabled: true
         onEntered: background.state = "hover"
         onExited: background.state = ""
         onClicked: navigationButtonClicked()
     }
}
}

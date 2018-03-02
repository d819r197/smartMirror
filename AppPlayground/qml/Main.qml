import VPlayApps 1.0
import QtQuick 2.0
import QtQuick.Window 2.10

App {

    NavigationStack {

        Page {
            title: "Smart Mirror"
        }
    }

    Rectangle {
        id: base
        x: 0
        y: 44
        width: 640
        height: 440
        color: "#000000"

        Rectangle {
            id: menuContainer
            x: 220
            y: 145
            width: 210
            height: 150
            color: "#000000"

            AppButton {
                id: menuExitButton
                x: 0
                y: 120
                width: 210
                height: 30
                text: "Exit"
            }

            AppButton {
                id: menuStartButton
                x: 0
                y: -0.1
                width: 210
                height: 30
                text: "Start"
                opacity: 1
                objectName: ""
                implicitWidth: 74.8
                icon: qsTr("")
                iconName: ""
                horizontalPadding: 0
                horizontalMargin: 0
                minimumWidth: 0
                implicitHeight: 23
                iconSize: -0.9
                fontCapitalization: 3
                borderWidth: 0
            }

            AppButton {
                id: menuSettingsButton
                x: 0
                y: 60
                width: 210
                height: 30
                text: "Settings"
                implicitHeight: 22.9
                iconSize: -0.2
                baselineOffset: 20.4
                borderWidth: 0.1
                fontCapitalization: 3
            }
        }
    }

    Connections {
        target: menuStartButton
        onClicked: print("Menu Button Clicked")
    }
    Connections {
        target: menuExitButton
        onClicked: {print("Quit Button Clicked")
                    App.exit()}
    }
    Connections {
        target: menuSettingsButton
        onClicked: print("Settings Button Clicked")
    }
}

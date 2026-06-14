pragma ComponentBehavior: Bound

import Quickshell.Hyprland
import QtQuick
import qs.services

Item {
    id: root

    required property int workspaceId
    required property string icon
    property var workspace: null

    implicitWidth: 32
    implicitHeight: 32

    readonly property bool isActive: workspace?.focused ?? false
    property bool isOccupied: false
    readonly property bool isHovered: hoverArea.containsMouse

    Rectangle {
        anchors.centerIn: parent
        width: root.isActive ? 32 : (root.isHovered ? 30 : 28)
        height: width
        radius: width / 2
        color: root.isActive ? Colors.workspaceActive : (root.isHovered ? Colors.surfaceVariant : (root.isOccupied ? Colors.chipBackground : "transparent"))
        border.width: root.isActive ? 0 : 1
        border.color: Colors.border

        Behavior on width  { NumberAnimation { duration: 150; easing.type: Easing.OutCubic } }
        Behavior on height { NumberAnimation { duration: 150; easing.type: Easing.OutCubic } }
        Behavior on color  { ColorAnimation  { duration: 150 } }

        Text {
            anchors.centerIn: parent
            text: root.icon
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 16
            color: root.isActive ? Colors.background : Colors.primaryText
            opacity: 1.0

            Behavior on color { ColorAnimation { duration: 150 } }
        }
    }

    MouseArea {
        id: hoverArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            if (root.workspace) root.workspace.activate()
            else Hyprland.dispatch("workspace " + root.workspaceId)
        }
    }
}

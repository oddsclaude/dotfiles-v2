pragma ComponentBehavior: Bound

import Quickshell.Hyprland
import QtQuick
import qs.services

Item {
    id: root

    required property int workspaceId
    required property string icon
    property var workspace: null

    implicitWidth: 28
    implicitHeight: 28

    readonly property bool isActive: workspace?.focused ?? false
    readonly property bool isOccupied: (workspace?.toplevels.count ?? 0) > 0
    readonly property bool isHovered: hoverArea.containsMouse

    Rectangle {
        anchors.centerIn: parent
        width: root.isActive ? 22 : (root.isHovered ? 22 : (root.isOccupied ? 18 : 16))
        height: width
        radius: root.isActive ? 7 : width / 2
        color: root.isActive ? Colors.workspaceActive : (root.isHovered ? Colors.primaryText : (root.isOccupied ? Colors.workspaceOccupied : Colors.workspaceInactive))

        Behavior on width  { NumberAnimation { duration: 180; easing.type: Easing.OutCubic } }
        Behavior on height { NumberAnimation { duration: 180; easing.type: Easing.OutCubic } }
        Behavior on color  { ColorAnimation  { duration: 180 } }
        Behavior on radius { NumberAnimation { duration: 180; easing.type: Easing.OutCubic } }

        Text {
            anchors.centerIn: parent
            text: root.icon
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 12
            color: root.isActive ? Colors.background : Colors.chipIcon

            Behavior on color { ColorAnimation { duration: 180 } }
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

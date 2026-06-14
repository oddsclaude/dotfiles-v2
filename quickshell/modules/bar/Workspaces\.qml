pragma ComponentBehavior: Bound

import Quickshell.Hyprland
import QtQuick

Row {
    spacing: 2

    readonly property var workspaceIcons: ({
        1: "\uf489",  // kitty (terminal)
        2: "\uf268",  // brave (browser)
        3: "\uf249",  // helixnotes (notebook)
        4: "\uf017",  // clock
        5: "\ue26f"   // gaming (controller alt)
    })

    Repeater {
        model: 5

        WorkspaceButton {
            required property int modelData
            workspaceId: modelData + 1
            icon: parent.workspaceIcons[modelData + 1] ?? ""
            workspace: Hyprland.workspaces.values.find(w => w.id === modelData + 1) ?? null
            isOccupied: Hyprland.toplevels.values.some(t => t.workspace?.id === modelData + 1)
        }
    }
}

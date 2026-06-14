pragma Singleton
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    property int capacity: 0
    property string status: "unknown"

    readonly property string capacityLabel: capacity + "%"
    readonly property bool isCharging: status === "charging"

    readonly property var formatIcons: ["\udb84\udf3a", "\udb84\udf3b", "\udb84\udf3c", "\udb84\udf3d", "\udb84\udf3e", "\udb84\udf3f", "\udb84\udf40", "\udb84\udf41", "\udb84\udf42", "\udb84\udf39"]

    readonly property string icon: {
        if (isCharging) return "\udb80\udf04"
        const idx = Math.max(0, Math.min(9, Math.floor(capacity / 10)))
        return formatIcons[idx]
    }

    FileView {
        id: capacityFile
        path: "/sys/class/power_supply/BAT0/capacity"
        watchChanges: true
        preload: true
        Component.onCompleted: root.capacity = parseInt(capacityFile.text().trim()) || 0
    }

    FileView {
        id: statusFile
        path: "/sys/class/power_supply/BAT0/status"
        watchChanges: true
        preload: true
        Component.onCompleted: root.status = statusFile.text().trim().toLowerCase()
    }

    Connections {
        target: capacityFile
        function onInternalTextChanged() {
            root.capacity = parseInt(capacityFile.text().trim()) || 0
        }
    }

    Connections {
        target: statusFile
        function onInternalTextChanged() {
            root.status = statusFile.text().trim().toLowerCase()
        }
    }
}

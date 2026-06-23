import Quickshell
import Quickshell.Services.Pipewire
import QtQuick
import QtQuick.Layouts

RowLayout {
    id: root
    spacing: 7

    property var sink: Pipewire.defaultAudioSink

    readonly property bool ready: sink && sink.ready
    readonly property bool muted: ready && sink.audio.muted
    readonly property int vol: ready ? Math.round(sink.audio.volume * 100) : 0

    // Wrap block logic in a function so the QML property evaluator accepts it
    readonly property string icon: {
        return (() => {
            if (!ready) return String.fromCodePoint(0xF0581)
            if (muted) return "󰝟"

            if (vol === 0) return String.fromCodePoint(0xF0581)
            if (vol < 34) return String.fromCodePoint(0xF057F)
            if (vol < 67) return String.fromCodePoint(0xF0580)
            return String.fromCodePoint(0xF057E)
        })()
    }    

    // Icon Display Component
    Text {
        text: root.icon
        color: "#f5cd5b"

        font {
            family: "JetBrainsMono Nerd Font Propo"
            pixelSize: 13
        }
    } // <-- Properly closed first Text component

    // Percentage Text Display Component
    Text {
        // Bind the text property using an anonymous function block execution
        text: {
            return (() => {
                if (!root.ready) return "-"
                if (root.muted) return "Muted"
                return root.vol + "%"
            })()
        }

        color: root.muted ? "#c4b09a" : "#f5e2c5"
        
        font {
            family: "Fira Code"
            pixelSize: 13
            weight: Font.DemiBold // 600 weight maps to Font.DemiBold or Font.Medium in QML
        }
    }

    // Tracker must live at the root level of the layout, not inside a Text element
    PwObjectTracker {
        objects: [root.sink]
    }
}
import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

ShellRoot {
    Variants {
        model: Quickshell.screens
        
        PanelWindow {
            required property var modelData
            screen: modelData
            
            // Anchors lock it to the top edge and stretch it full width
            anchors { top: true; left: true; right: true }
            implicitHeight: 38
            color: "#040e0d" 
 
            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 14
                anchors.rightMargin: 14

                // Left Side: 9-workspace switcher module
                Workspaces {}
                
                // Center: Invisible spacer pushing elements to the outer edges
                Item {
                    Layout.fillWidth: true
                }

                Network {}
                Volume {}
                Battery {}
                Clock {}
                
            }
        }
    }
}

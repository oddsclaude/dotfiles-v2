// ~/.config/matugen/templates/Theme.qml
import QtQuick

pragma Singleton

QtObject {
    readonly property color bg: "{{colors.surface.default.hex}}"
    readonly property color fg: "{{colors.on_surface.default.hex}}"
    readonly property color muted: "{{colors.surface_variant.default.hex}}"
    readonly property color cyan: "{{colors.primary.default.hex}}"
    readonly property color purple: "{{colors.secondary.default.hex}}"
    readonly property color red: "{{colors.error.default.hex}}"
    readonly property color yellow: "{{colors.tertiary.default.hex}}"
    readonly property color blue: "{{colors.inverse_primary.default.hex}}"
}

# ~/.config/matugen/templates/fish.fish

# --- Shell Syntax Highlighting ---
set -U fish_color_normal {{colors.on_surface.default.hex_stripped}}
set -U fish_color_command {{colors.primary.default.hex_stripped}} --bold
set -U fish_color_param {{colors.secondary.default.hex_stripped}}
set -U fish_color_keyword {{colors.tertiary.default.hex_stripped}}
set -U fish_color_quote {{colors.primary_fixed_dim.default.hex_stripped}}
set -U fish_color_redirection {{colors.on_surface_variant.default.hex_stripped}}
set -U fish_color_end {{colors.secondary_fixed.default.hex_stripped}}
set -U fish_color_error {{colors.error.default.hex_stripped}}
set -U fish_color_autosuggestion {{colors.on_surface_variant.default.hex_stripped}}
set -U fish_color_comment {{colors.on_surface_variant.default.hex_stripped}}

# High-contrast selection fixes
set -U fish_color_selection --reverse
set -U fish_color_search_match --background={{colors.primary.default.hex_stripped}} {{colors.surface.default.hex_stripped}}

# --- File Listing Colors (LS_COLORS) ---
# Every file type now maps directly to a Matugen color token
set -gx LS_COLORS "di=38;2;{{colors.primary.default.red}};{{colors.primary.default.green}};{{colors.primary.default.blue}}:\
ln=38;2;{{colors.tertiary.default.red}};{{colors.tertiary.default.green}};{{colors.tertiary.default.blue}}:\
ex=38;2;{{colors.secondary.default.red}};{{colors.secondary.default.green}};{{colors.secondary.default.blue}};1:\
pi=38;2;{{colors.error_container.default.red}};{{colors.error_container.default.green}};{{colors.error_container.default.blue}}:\
so=38;2;{{colors.inverse_primary.default.red}};{{colors.inverse_primary.default.green}};{{colors.inverse_primary.default.blue}}:\
bd=38;2;{{colors.surface_variant.default.red}};{{colors.surface_variant.default.green}};{{colors.surface_variant.default.blue}}:\
cd=38;2;{{colors.surface_variant.default.red}};{{colors.surface_variant.default.green}};{{colors.surface_variant.default.blue}}:\
or=38;2;{{colors.error.default.red}};{{colors.error.default.green}};{{colors.error.default.blue}};1:\
mi=38;2;{{colors.outline.default.red}};{{colors.outline.default.green}};{{colors.outline.default.blue}}:\
su=38;2;{{colors.on_secondary_container.default.red}};{{colors.on_secondary_container.default.green}};{{colors.on_secondary_container.default.blue}}:\
sg=38;2;{{colors.on_tertiary_container.default.red}};{{colors.on_tertiary_container.default.green}};{{colors.on_tertiary_container.default.blue}}"

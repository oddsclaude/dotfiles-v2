local M = {}

M.base_16 = {
  base00 = "{{colors.surface.default.hex}}",               -- Default Background
  base01 = "{{colors.surface_container_low.default.hex}}",   -- Lighter Background
  base02 = "{{colors.surface_container.default.hex}}",       -- Selection Background
  base03 = "{{colors.outline.default.hex}}",                 -- Comments, Invisibles
  base04 = "{{colors.on_surface_variant.default.hex}}",      -- Dark Foreground
  base05 = "{{colors.on_surface.default.hex}}",              -- Default Foreground
  base06 = "{{colors.on_surface_variant.default.hex}}",      -- Light Foreground
  base07 = "{{colors.surface_bright.default.hex}}",          -- Light Background
  base08 = "{{colors.error.default.hex}}",                   -- Variables, Red
  base09 = "{{colors.tertiary.default.hex}}",                -- Integers, Orange
  base0A = "{{colors.secondary.default.hex}}",               -- Classes, Yellow
  base0B = "{{colors.primary.default.hex}}",                 -- Strings, Green
  base0C = "{{colors.primary_container.default.hex}}",       -- Support, Cyan
  base0D = "{{colors.primary.default.hex}}",                 -- Functions, Blue
  base0E = "{{colors.inverse_primary.default.hex}}",         -- Keywords, Purple
  base0F = "{{colors.error_container.default.hex}}",         -- Deprecated, Brown
}

M.base_30 = {
  white          = "{{colors.on_surface.default.hex}}",
  black          = "{{colors.surface.default.hex}}",
  darker_black   = "{{colors.surface_container_lowest.default.hex}}",
  black2         = "{{colors.surface_container_low.default.hex}}",
  one_bg         = "{{colors.surface_container.default.hex}}",
  one_bg2        = "{{colors.surface_container_high.default.hex}}",
  one_bg3        = "{{colors.surface_container_highest.default.hex}}",
  grey           = "{{colors.outline.default.hex}}",
  grey_fg        = "{{colors.on_surface_variant.default.hex}}",
  grey_fg2       = "{{colors.outline_variant.default.hex}}",
  light_grey     = "{{colors.outline.default.hex}}",
  
  red            = "{{colors.error.default.hex}}",
  baby_pink      = "{{colors.error_container.default.hex}}",
  pink           = "{{colors.error.default.hex}}",
  
  line           = "{{colors.outline_variant.default.hex}}",
  
  green          = "{{colors.primary.default.hex}}",
  blue           = "{{colors.secondary.default.hex}}",
  yellow         = "{{colors.tertiary.default.hex}}",
  sun            = "{{colors.tertiary.default.hex}}",
  purple         = "{{colors.primary.default.hex}}",
  dark_purple    = "{{colors.primary_container.default.hex}}",
  teal           = "{{colors.secondary.default.hex}}",
  orange         = "{{colors.tertiary.default.hex}}",
  cyan           = "{{colors.secondary.default.hex}}",
  
  statusline_bg  = "{{colors.surface_container_low.default.hex}}",
  pmenu_bg       = "{{colors.surface_container.default.hex}}",
  folder_bg      = "{{colors.primary.default.hex}}",
}

return M

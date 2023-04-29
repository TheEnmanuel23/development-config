local status, devicons = pcall(require, 'nvim-web-devicons')

if (not status) then return end

devicons.setup  {
  override = {
    svelte = {
      icon = "sv",
      color = "#d75c23",
      cterm_color = "65",
      name = "svelte"
    }
  }
}

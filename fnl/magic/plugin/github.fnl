(module magic.plugin.github
  {autoload {nvim aniseed.nvim}})

(require (github-theme.setup {:themeStyle :light}))
(nvim.ex.colorscheme :github)

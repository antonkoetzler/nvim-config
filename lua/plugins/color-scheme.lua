-- Color schemes. All themes are lazy = true — themery.nvim manages which one loads.
-- To add a theme: install it below, then add a { name, colorscheme } entry in themery's setup.
-- To switch themes: <leader>ft (live preview picker, choice persists across restarts).
return {
  -- Themes (installed but not loaded at startup — themery decides).
  {
    'ribru17/bamboo.nvim',
    name = 'bamboo',
    lazy = true,
    config = function()
      require('bamboo').setup {}
    end,
  },

  -- Themery: persistent theme switcher with live preview.
  {
    'zaldih/themery.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('themery').setup {
        themes = {
          { name = 'Seashells', colorscheme = 'seashells' },
          { name = 'Bamboo',    colorscheme = 'bamboo' },
        },
        livePreview = true,
      }
    end,
  },
}

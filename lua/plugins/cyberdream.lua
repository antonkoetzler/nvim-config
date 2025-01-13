return {
  'scottmckendry/cyberdream.nvim',
  name = 'cyberdream',
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup({
      borderless_telescope = false,
    });
  end,
};

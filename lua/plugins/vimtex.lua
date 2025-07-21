return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk_engines = {
      _   = '-xelatex',
      pdf = '-xelatex',
    }
    vim.g.vimtex_compiler_latexmk = {
      executable = 'latexmk',
      options = {
        '-shell-escape',
        '-synctex=1',
        '-interaction=nonstopmode',
      },
    }
  end
}

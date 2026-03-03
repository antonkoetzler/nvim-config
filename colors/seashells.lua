-- seashells.lua
-- Exact port of the Alacritty seashells theme (iTerm2 origin).
-- Palette source: alacritty/themes/themes/seashells.toml

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'seashells'
vim.opt.background = 'dark'

local c = {
  -- Primary
  bg          = '#061923',
  fg          = '#e5c49e',
  -- Cursor
  cursor      = '#feaf3c',
  -- Selection
  sel_bg      = '#265b75',
  sel_fg      = '#ffe9d7',
  -- Normal ANSI
  black       = '#1d485f',
  red         = '#db662d',
  green       = '#008eab',
  yellow      = '#feaf3c',
  blue        = '#255a62',
  magenta     = '#77dbf4',
  cyan        = '#5fb1c2',
  white       = '#e5c49e',
  -- Bright ANSI
  br_black    = '#545d65',
  br_red      = '#dd998a',
  br_green    = '#739da8',
  br_yellow   = '#fedaae',
  br_blue     = '#0bc7e3',
  br_magenta  = '#c6e8f1',
  br_cyan     = '#97b9c0',
  br_white    = '#ffe9d7',
}

-- Derived backgrounds (not in the TOML, but consistent with the palette depth)
local bg_dark  = '#030f16'
local bg_float = '#0a2533'
local bg_hl    = '#0d2d3f'

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Editor base ───────────────────────────────────────────────────────────────
hi('Normal',        { fg = c.fg,       bg = c.bg })
hi('NormalFloat',   { fg = c.fg,       bg = bg_float })
hi('NormalNC',      { fg = c.fg,       bg = c.bg })
hi('ColorColumn',   { bg = bg_hl })
hi('Conceal',       { fg = c.br_black })
hi('CursorLine',    { bg = bg_hl })
hi('CursorColumn',  { bg = bg_hl })
hi('CursorLineNr',  { fg = c.yellow,   bold = true })
hi('LineNr',        { fg = c.black })
hi('SignColumn',    { fg = c.black,    bg = c.bg })
hi('FoldColumn',    { fg = c.br_black, bg = c.bg })
hi('Folded',        { fg = c.br_green, bg = bg_dark })
hi('MatchParen',    { fg = c.yellow,   bold = true, underline = true })
hi('NonText',       { fg = c.black })
hi('Whitespace',    { fg = c.black })
hi('SpecialKey',    { fg = c.black })
hi('EndOfBuffer',   { fg = c.black })

-- ── Visual / selection ────────────────────────────────────────────────────────
hi('Visual',        { bg = c.sel_bg })
hi('VisualNOS',     { bg = c.sel_bg })

-- ── Search ────────────────────────────────────────────────────────────────────
hi('Search',        { fg = c.bg,  bg = c.yellow })
hi('CurSearch',     { fg = c.bg,  bg = c.cursor })
hi('IncSearch',     { fg = c.bg,  bg = c.yellow })
hi('Substitute',    { fg = c.bg,  bg = c.br_red })

-- ── Statusline / splits ───────────────────────────────────────────────────────
hi('StatusLine',    { fg = c.fg,       bg = c.blue })
hi('StatusLineNC',  { fg = c.br_black, bg = bg_dark })
hi('WinSeparator',  { fg = c.black })
hi('VertSplit',     { fg = c.black })

-- ── Popup menu ────────────────────────────────────────────────────────────────
hi('Pmenu',         { fg = c.fg,    bg = bg_float })
hi('PmenuSel',      { fg = c.bg,    bg = c.magenta })
hi('PmenuSbar',     { bg = bg_hl })
hi('PmenuThumb',    { bg = c.br_black })

-- ── Tabline ───────────────────────────────────────────────────────────────────
hi('TabLine',       { fg = c.br_black, bg = bg_dark })
hi('TabLineSel',    { fg = c.fg,       bg = c.bg })
hi('TabLineFill',   { bg = bg_dark })

-- ── Messages ──────────────────────────────────────────────────────────────────
hi('ModeMsg',       { fg = c.green,  bold = true })
hi('MoreMsg',       { fg = c.green })
hi('Question',      { fg = c.green })
hi('WarningMsg',    { fg = c.yellow })
hi('ErrorMsg',      { fg = c.red,    bold = true })

-- ── Diagnostics ───────────────────────────────────────────────────────────────
hi('DiagnosticError',          { fg = c.red })
hi('DiagnosticWarn',           { fg = c.yellow })
hi('DiagnosticInfo',           { fg = c.cyan })
hi('DiagnosticHint',           { fg = c.br_green })
hi('DiagnosticOk',             { fg = c.green })
hi('DiagnosticUnderlineError', { sp = c.red,      underline = true })
hi('DiagnosticUnderlineWarn',  { sp = c.yellow,   underline = true })
hi('DiagnosticUnderlineInfo',  { sp = c.cyan,     underline = true })
hi('DiagnosticUnderlineHint',  { sp = c.br_green, underline = true })

-- ── Diff ──────────────────────────────────────────────────────────────────────
hi('DiffAdd',    { bg = '#092918' })
hi('DiffChange', { bg = '#0d2535' })
hi('DiffDelete', { fg = c.br_black, bg = '#290e0e' })
hi('DiffText',   { bg = '#0f3545' })

-- ── Base syntax groups ────────────────────────────────────────────────────────
hi('Comment',    { fg = c.br_black, italic = true })
hi('Constant',   { fg = c.red })
hi('String',     { fg = c.br_green })
hi('Character',  { fg = c.br_green })
hi('Number',     { fg = c.red })
hi('Float',      { fg = c.red })
hi('Boolean',    { fg = c.red })
hi('Identifier', { fg = c.fg })
hi('Function',   { fg = c.magenta })
hi('Statement',  { fg = c.yellow })
hi('Keyword',    { fg = c.yellow })
hi('Operator',   { fg = c.cyan })
hi('Type',       { fg = c.cyan })
hi('Typedef',    { fg = c.cyan })
hi('PreProc',    { fg = c.green })
hi('Include',    { fg = c.green })
hi('Define',     { fg = c.green })
hi('Macro',      { fg = c.green })
hi('Special',    { fg = c.br_blue })
hi('SpecialChar',{ fg = c.br_blue })
hi('Delimiter',  { fg = c.br_cyan })
hi('Error',      { fg = c.red,    bold = true })
hi('Todo',       { fg = c.yellow, bold = true })
hi('Underlined', { underline = true })

-- ── Tree-sitter ───────────────────────────────────────────────────────────────
hi('@variable',              { fg = c.fg })
hi('@variable.builtin',      { fg = c.br_red })
hi('@variable.parameter',    { fg = c.br_yellow })
hi('@variable.member',       { fg = c.br_cyan })
hi('@constant',              { fg = c.red })
hi('@constant.builtin',      { fg = c.red })
hi('@constant.macro',        { fg = c.green })
hi('@string',                { fg = c.br_green })
hi('@string.escape',         { fg = c.br_blue })
hi('@string.special',        { fg = c.br_blue })
hi('@character',             { fg = c.br_green })
hi('@number',                { fg = c.red })
hi('@number.float',          { fg = c.red })
hi('@boolean',               { fg = c.red })
hi('@function',              { fg = c.magenta })
hi('@function.builtin',      { fg = c.br_blue })
hi('@function.call',         { fg = c.magenta })
hi('@function.macro',        { fg = c.green })
hi('@function.method',       { fg = c.magenta })
hi('@function.method.call',  { fg = c.magenta })
hi('@constructor',           { fg = c.cyan })
hi('@keyword',               { fg = c.yellow })
hi('@keyword.function',      { fg = c.yellow })
hi('@keyword.operator',      { fg = c.yellow })
hi('@keyword.import',        { fg = c.green })
hi('@keyword.return',        { fg = c.yellow })
hi('@keyword.conditional',   { fg = c.yellow })
hi('@keyword.repeat',        { fg = c.yellow })
hi('@keyword.exception',     { fg = c.yellow })
hi('@operator',              { fg = c.cyan })
hi('@punctuation',           { fg = c.br_cyan })
hi('@punctuation.bracket',   { fg = c.br_cyan })
hi('@punctuation.delimiter', { fg = c.br_cyan })
hi('@punctuation.special',   { fg = c.br_blue })
hi('@type',                  { fg = c.cyan })
hi('@type.builtin',          { fg = c.cyan })
hi('@type.definition',       { fg = c.cyan })
hi('@attribute',             { fg = c.br_red })
hi('@namespace',             { fg = c.green })
hi('@module',                { fg = c.green })
hi('@label',                 { fg = c.yellow })
hi('@comment',               { fg = c.br_black, italic = true })
hi('@tag',                   { fg = c.yellow })
hi('@tag.attribute',         { fg = c.br_green })
hi('@tag.delimiter',         { fg = c.br_cyan })

-- ── LSP semantic tokens ───────────────────────────────────────────────────────
hi('@lsp.type.class',        { link = '@type' })
hi('@lsp.type.interface',    { link = '@type' })
hi('@lsp.type.enum',         { link = '@type' })
hi('@lsp.type.enumMember',   { link = '@constant' })
hi('@lsp.type.function',     { link = '@function' })
hi('@lsp.type.method',       { link = '@function.method' })
hi('@lsp.type.parameter',    { link = '@variable.parameter' })
hi('@lsp.type.variable',     { link = '@variable' })
hi('@lsp.type.property',     { link = '@variable.member' })
hi('@lsp.type.namespace',    { link = '@namespace' })
hi('@lsp.type.keyword',      { link = '@keyword' })
hi('@lsp.type.string',       { link = '@string' })
hi('@lsp.type.number',       { link = '@number' })
hi('@lsp.type.operator',     { link = '@operator' })
hi('@lsp.type.decorator',    { link = '@attribute' })
hi('@lsp.type.comment',      { link = '@comment' })
hi('@lsp.mod.deprecated',    { strikethrough = true })

-- ── Telescope ─────────────────────────────────────────────────────────────────
hi('TelescopeNormal',          { fg = c.fg,       bg = bg_float })
hi('TelescopeBorder',          { fg = c.blue,     bg = bg_float })
hi('TelescopePromptBorder',    { fg = c.yellow,   bg = bg_float })
hi('TelescopeResultsBorder',   { fg = c.blue,     bg = bg_float })
hi('TelescopePreviewBorder',   { fg = c.blue,     bg = bg_float })
hi('TelescopeSelection',       { fg = c.fg,       bg = c.sel_bg })
hi('TelescopeMatching',        { fg = c.yellow,   bold = true })

-- ── nvim-tree ─────────────────────────────────────────────────────────────────
hi('NvimTreeNormal',           { fg = c.fg,       bg = bg_dark })
hi('NvimTreeFolderName',       { fg = c.magenta })
hi('NvimTreeOpenedFolderName', { fg = c.magenta,  bold = true })
hi('NvimTreeFolderIcon',       { fg = c.yellow })
hi('NvimTreeRootFolder',       { fg = c.cyan,     bold = true })
hi('NvimTreeGitNew',           { fg = c.green })
hi('NvimTreeGitDirty',         { fg = c.yellow })
hi('NvimTreeGitDeleted',       { fg = c.red })
hi('NvimTreeIndentMarker',     { fg = c.black })
hi('NvimTreeWinSeparator',     { fg = c.black,    bg = bg_dark })

-- ── Git signs ─────────────────────────────────────────────────────────────────
hi('GitSignsAdd',    { fg = c.green })
hi('GitSignsChange', { fg = c.yellow })
hi('GitSignsDelete', { fg = c.red })

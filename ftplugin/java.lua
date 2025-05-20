-- Make sure you’ve downloaded lombok.jar (e.g. to ~/.local/share/lombok.jar)
--[[ local lombok_jar = vim.fn.expand("~/.local/share/lombok.jar")

local config = {
  cmd = {
    "/opt/homebrew/bin/jdtls",
    "-javaagent:" .. lombok_jar,
    "-Xbootclasspath/a:" .. lombok_jar,
  },
  root_dir = vim.fs.dirname(
    vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]
  ),
  on_attach = require("config.on_attach"),
} ]]

-- require("jdtls").start_or_attach(config)

local config = {
  cmd = { '/opt/homebrew/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
  on_attach = require('config.on_attach'),
}
require('jdtls').start_or_attach(config)

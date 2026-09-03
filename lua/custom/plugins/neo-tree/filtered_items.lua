-- fileterd_items = require <this>

return {
  hide_dotfiles = false,
  hide_gitignored = true,
  -- hide_by_pattern = { -- uses glob style patterns
  --"*.meta",
  --"*/src/*/tsconfig.json",
  -- },
  always_show = {
    '.nvmrc',
    '.npmrc',
    '.oxfmtrc.json',
    '.oxfmtrc.jsonc',
    '.oxlintrc.json',
    '.oxlintrc.jsonc',
  },
  hide_by_name = {
    '.cursor',
    '.vscode',
  },
  never_show = {
    -- ".cursor",
    -- ".vscode",
  },
}

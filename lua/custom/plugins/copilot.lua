-- In your init.lua or plugins file
return {
  -- 'github/copilot.vim',
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = '<C-a>',
        next = '<C-n>',
        prev = '<C-p>',
        accept_word = '<C-w>',
        dismiss = '<C-d>',
      },
    },
    panel = {
      enabled = true,
    },
  },
}

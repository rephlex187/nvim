return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-1>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    { "<c-2>", "<cmd><C-U>TmuxNavigateDown<cr>" },
    { "<c-3>", "<cmd><C-U>TmuxNavigateUp<cr>" },
    { "<c-4>", "<cmd><C-U>TmuxNavigateRight<cr>" },
  },
}

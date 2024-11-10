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
    { "<c-0>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    { "<c-1>", "<cmd><C-U>TmuxNavigateDown<cr>" },
    { "<c-2>", "<cmd><C-U>TmuxNavigateUp<cr>" },
    { "<c-3>", "<cmd><C-U>TmuxNavigateRight<cr>" },
  },
}

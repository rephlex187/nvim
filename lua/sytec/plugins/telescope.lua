return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-live-grep-args.nvim" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        mappings = {
          n = {
            ["q"] = actions.close,
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          },
          i = {
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          },
        },
        preview = {
          filesize_hook = function(filepath, bufnr, opts)
            local max_bytes = 10000
            local cmd = { "head", "-c", max_bytes, filepath }
            require("telescope.previewers.utils").job_maker(cmd, bufnr, opts)
          end,
        },
      },
      extensions = {
        live_grep_args = {
          auto_quoting = true, -- enable/disable auto-quoting
        },
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          mappings = {
            list = {
              ["<C-d>"] = require("telescope.actions").delete_buffer,
            },
          },
        },
      },
    })

    telescope.load_extension("live_grep_args")

    local find_command = {
      'rg',
      '--files',
      '--hidden',
      '-g',
      '!.git',
      '-g',
      '!vendor',
      '-g',
      '!dist',
      '-g',
      '!out',
      '-g',
      '!node_modules',
    }

    vim.keymap.set("n", "<C-p>", function()
      builtin.find_files({
        no_ignore = false,
        find_command = find_command,
      })
    end)
    vim.keymap.set("n", "<C-f>", function()
      telescope.extensions.live_grep_args.live_grep_args({
        default_text = "-g '!*dist*' -g '!*vendor*' -g '!*node_modules*' -g !*lock* "
      })
    end)
    vim.keymap.set("n", "<C-d>", function()
      builtin.diagnostics()
    end)
  end,
}

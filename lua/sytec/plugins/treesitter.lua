---@diagnostic disable: missing-fields

return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
        custom_captures = {
          ["variable"] = "Variable",
          ["function"] = "Function",
          ["method"] = "Function",
          ["parameter"] = "Parameter",
          ["property"] = "Property",
          ["field"] = "Field",
          ["constructor"] = "Constructor",
          ["call"] = "Function",
          ["constant"] = "Constant",
          ["string"] = "String",
          ["number"] = "Number",
          ["boolean"] = "Boolean",
          ["comment"] = "Comment",
          ["keyword"] = "Keyword",
          ["operator"] = "Operator",
          ["class"] = "Class",
        }
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
        "sql",
        "yaml",
        "vimdoc",
        "markdown",
        "regex",
        "markdown_inline",
        "bash",
        "css",
        "html",
        "javascript",
        "json",
        "go",
        "php",
        "scss",
        "typescript",
        "vim",
        "lua",
        "c",
        "twig",
        "python",
        "glimmer",
        "astro",
        "pug",
        "xml"
      }, -- one of "all" or a list of languages
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      matchup = {
        enable = true,
      },
    })

    vim.treesitter.language.register("markdown", "mdx") -- the someft filetype will use the python parser and queries.

    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade"
    }
  end,
}

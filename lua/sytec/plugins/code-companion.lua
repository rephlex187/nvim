return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "ravitemer/mcphub.nvim",
        "hrsh7th/nvim-cmp",                      -- Optional: For using slash commands and variables in the chat buffer
        "nvim-telescope/telescope.nvim",         -- Optional: For using slash commands
        { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
    },
    config = function()
        require("codecompanion").setup({
            strategies = {
                chat = {
                    tools = {
                        ["mcp"] = {
                            callback = function() return require("mcphub.extensions.codecompanion") end,
                            description = "Call tools and resources from the MCP Servers",
                            opts = {
                                requires_approval = true,
                            }
                        }
                    }
                }
            }
        })
    end
}

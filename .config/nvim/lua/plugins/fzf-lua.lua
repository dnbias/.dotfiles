return {
  "ibhagwan/fzf-lua",
  bind = {},
  opts = function(_, opts)
    vim.keymap.set("n", "<C-f>", ":FzfLua files<CR>", { desc = "Find files" })
    vim.keymap.set(
      "n",
      "<leader>fg",
      ":FzfLua live_grep<CR>",
      { desc = "Find grep" }
    )
    opts.previewers = {
      builtin = {
        -- fzf-lua is very fast, but it really struggled to preview a couple files
        -- in a repo. Those files were very big JavaScript files (1MB, minified, all on a single line).
        -- It turns out it was Treesitter having trouble parsing the files.
        -- With this change, the previewer will not add syntax highlighting to files larger than 100KB
        -- (Yes, I know you shouldn't have 100KB minified files in source control.)
        syntax_limit_b = 1024 * 100, -- 100KB
      },
    }
    opts.fzf_opts = {
      ["--layout"] = "default",
      ["--padding"] = "0",
      ["--margin"] = "0",
    }
    opts.winopts = {
      preview = {
        vertical = "up:20%",
        layout = "vertical",
        border = "noborder",
        title = false,
        hidden = true,
      },
      width = 0.40,
      height = 0.60,
      backdrop = 80,
      border = "none",
    }
  end,
}

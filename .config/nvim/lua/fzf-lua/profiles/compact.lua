return {
  desc = "Compact layout with minimal UI",
  winopts = {
    height = 0.4,
    width = 0.6,
    preview = {
      layout = "vertical",
      vertical = "up:50%",
    },
  },
  fzf_opts = {
    ["--info"] = "inline",
    ["--border"] = "none",
  },
}

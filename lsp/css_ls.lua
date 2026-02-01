return {
  cmd = {
    "vscode-css-language-server",
    "--stdio"
  },
  filetypes = {
    "css", "scss", "sass"
  },
  root_markers = {
    "package.json",
    "tsconfig.json",
  },
  single_file_support = true,
}

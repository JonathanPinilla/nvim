return {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = {
    "c", "cpp", "objc", "objcpp"
  },
  root_markers = {
    "README"
  },
  single_file_support = true,
} 

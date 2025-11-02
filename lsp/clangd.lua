return {
  cmd = {
    'clangd',
    '--background-index',
     "--clang-tidy",
     "--all-scopes-completion",
     "--cross-file-rename",
     "--completion-style=detailed",
     "--header-insertion-decorators",
     "--header-insertion=iwyu",
     "--pch-storage=memory"
  },
  root_markers = { { '.clangd' }, '.git' }
}

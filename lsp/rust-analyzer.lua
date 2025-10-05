return {
  cmd = { 'rust-analyzer' },
  settings = {
    ['rust-analyzer'] = {
      check = {
        command = "clippy";
      },
      diagnostics = {
        enable = true;
      }
    }
  },
  filetypes = { 'rust' },
  root_markers = { { 'Cargo.toml' }, '.git' },
}

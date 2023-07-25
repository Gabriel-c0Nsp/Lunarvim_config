lvim.plugins = {

  { "lunarvim/colorschemes" },
  { "folke/tokyonight.nvim" },
  -- { "tribela/vim-transparent" },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "ThePrimeagen/vim-be-good" },
  { "overcache/NeoSolarized" },
  { "mattn/emmet-vim" },
  { "mfussenegger/nvim-dap" },
  { "rcarriga/cmp-dap" },
  { "mfussenegger/nvim-jdtls" },
 { "junegunn/fzf",  build = "./install --bin"},
 { "ibhagwan/fzf-lua"},

{
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  }
}

}

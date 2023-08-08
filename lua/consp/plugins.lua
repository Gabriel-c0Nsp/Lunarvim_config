lvim.plugins = {

  { "lunarvim/colorschemes" },
  { "folke/tokyonight.nvim" },
  { "tribela/vim-transparent" },
  { "ellisonleao/gruvbox.nvim" },
  { "ThePrimeagen/vim-be-good" },
  { "sitiom/nvim-numbertoggle" },
  { "overcache/NeoSolarized" },
  { "mattn/emmet-vim" },

  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    }
  }

}

return {pkgs={{name="noice.nvim",source="lazy",spec=function()
return {
  -- nui.nvim can be lazy loaded
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "folke/noice.nvim",
  },
}

end,file="lazy.lua",dir="/home/evandagur/.local/share/nvim/lazy/noice.nvim",},{name="plenary.nvim",source="lazy",spec={"nvim-lua/plenary.nvim",lazy=true,},file="community",dir="/home/evandagur/.local/share/nvim/lazy/plenary.nvim",},{name="telescope.nvim",source="rockspec",spec={"telescope.nvim",specs={{"nvim-lua/plenary.nvim",lazy=true,},},build=false,},file="telescope.nvim-scm-1.rockspec",dir="/home/evandagur/.local/share/nvim/lazy/telescope.nvim",},},version=12,}
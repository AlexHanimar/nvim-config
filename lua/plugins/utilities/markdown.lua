return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	priority = 49,
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require("markview").setup {
			preview = {
				modes = { "n", "no", "c", "i" },
				hybrid_modes = { "i" },
				callbacks = {
					on_enable = function(_, win)
						vim.wo[win].conceallevel = 2;
						vim.wo[win].concealcursor = "nc";
					end
				}
			}
		}
	end
}

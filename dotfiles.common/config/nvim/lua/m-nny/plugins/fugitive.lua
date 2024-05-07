return {
	"tpope/vim-fugitive",
	config = function()
		-- Open fugitive-summary in current window
		vim.keymap.set("n", "<leader>gs", function()
			vim.cmd.Gedit(":")
		end, { desc = "git [S]tatus" })
	end,
}

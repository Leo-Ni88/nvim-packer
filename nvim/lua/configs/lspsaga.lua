local status, lspsaga = pcall(require, "lspsaga")
if not status then
	return
end

lspsaga.setup({
	lightbulb = {
		enable = false,
	},
	outline = {
		keys = {
			expand_or_jump = "<CR>",
		},
	},
})

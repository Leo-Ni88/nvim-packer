local status, noice = pcall(require, "noice")
if not status then
	return
end

noice.setup({
	cmdline = {
		format = {
			search_up = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
			search_down = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
		},
	},
})

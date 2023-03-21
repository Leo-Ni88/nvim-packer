local status, transparent = pcall(require, "transparent")
if not status then
	return
end

transparent.setup({
	extra_groups = {
		-- make buffline transparent
		"BufferlineBuffer",
		"BufferlineBufferSelected",
		"BufferlineBufferVisible",
		"BufferLineSeparator",
		"BufferLineSeparatorSelected",
		"BufferLineSeparatorVisible",
		"BufferLineNumbers",
		"BufferLineNumbersSelected",
		"BufferLineNumbersVisible",
		"BufferLineCloseButton",
		"BufferLineCloseButtonSelected",
		"BufferLineCloseButtonVisible",
		"BufferLineModifiedSelected",
		"BufferLineModifiedVisible",
		"BufferLineModified",
		"BufferLineIndicatorSelected",
		"BufferLineIndicatorVisible",
		"BufferLineBackground",
		"BufferLineTab",
		"BufferLineTabClose",
		"BufferLineTabSelected",
		"BufferLineTabSeparator",
		"BufferLineTabSeparatorSelected",
		"BufferLineFill",
		"BufferLineGroupSeparator",
		"BufferLineDevIconLua",
		"BufferLineDevIconLuaInactive",
		"BufferLineDevIconLuaSelected",

		"OutlinePreviewNormal",
		"IndentBlanklineChar",

		-- lspsaga group
		"SagaShadow",
		"SagaCollapse",
		"SagaBorder",
		"SagaNormal",
		"SagaExpand",
		"SagaWinbarArray",
		"SagaWinbarFileIcon",
		"SagaWinbarUnitNeoTreeFloatNormal",

		-- make floating windows transparent
		"LspFloatWinNormal",
		"Normal",
		"NormalFloat",
		"FloatBorder",
		"FloatTitle",
		"TelescopeNormal",
		"TelescopeBorder",
		"TelescopePromptBorder",

		-- Signs
		"GitSignsDelete",
		"GitSignsChange",
		"GitSignsAdd",
		"DiagnosticSignError",
		"DiagnosticSignWarn",
		"DiagnosticSignInfo",
		"DiagnosticSignHint",
		"DiagnosticSignOk",
	},
	exclude_groups = {},
})

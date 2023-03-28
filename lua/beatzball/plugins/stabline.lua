-- import comment plugin safely
local setup, stabline = pcall(require, "stabline")
if not setup then
	return
end

-- enable comment
stabline.setup({
	style = "bar",
	bg = "#986fec",
	fg = "black",
	stab_left = "┃",
	stab_right = " ",
})

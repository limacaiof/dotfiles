local dir = vim.fn.stdpath("config") .. "/lua/config"

for _, filename in ipairs(vim.fn.glob(dir .. "/*.lua", false, true)) do
	if not filename:match("init.lua$") then
	local module = filename:match(".*/(.-)%.lua$")
	if module then
		require("config." .. module)
	end
end
end

if 1 ~= vim.fn.has "nvim-0.8.0" then
    vim.apm.nvim_err_writeln("productivitytimer.nvim requires at least nvim-0.8.0")
    return
end

if vim.g.loaded_productivity_timer == 1 then
  return
end
vim.g.loaded_productivity_timer = 1

vim.api.nvim_create_user_command("StartTimer", function(args)
    local input = args["line1"]
    require("productivitytimer").StartTimer(input)
end, {})
if 1 ~= vim.fn.has "nvim-0.8.0" then
    vim.apm.nvim_err_writeln("productivitytimer.nvim requires at least nvim-0.8.0")
    return
end

if vim.g.loaded_productivity_timer == 1 then
  return
end
vim.g.loaded_productivity_timer = 1

-- TODO: current issue is that calling StartTimer "1s"
-- only 1 gets passed into the StartTimer function
vim.api.nvim_create_user_command("StartTimer", function(params)
    require("productivitytimer").StartTimer(params)
end, {
    nargs = "*",
})


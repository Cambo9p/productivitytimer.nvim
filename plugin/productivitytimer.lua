if 1 ~= vim.fn.has "nvim-0.8.0" then
    vim.apm.nvim_err_writeln("productivitytimer.nvim requires at least nvim-0.8.0")
    return
end

if vim.g.loaded_productivity_timer == 1 then
  return
end
vim.g.loaded_productivity_timer = 1

vim.api.nvim_set_hl(0, "CellularAutomatonNormal", { default = true, link = "Normal" })

vim.apm.create_user_command("StartTimer", function(opts)
    require("productivity-timer").StartTimer(opts.fargs[1])
end, {
    nargs = 1,
    complete = function (_, line)
    end,
})

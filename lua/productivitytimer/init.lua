local M = {}

local util = require 'productivitytimer.util'

local function timer_callback()
    print("timer went off")
end

M.StartTimer = function(time)
    local no_ms = util.parse_time(time)
    if not no_ms then
        print("There was an error parsing")
    end
    vim.defer_fn(function()
        timer_callback()
    end,
    no_ms)
end

return M

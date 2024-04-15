local M = {}

local util = require 'productivitytimer.util'

local function timer_callback()
    print("timer went off")
end

local timer = vim.loop.new_timer()

-- main entrypoint TODO: docs for useage
M.StartTimer = function(time)
    print("time is ")
    print(time)
    local no_ms = util.parse_time(time)
    if not no_ms then
        print("There was an error parsing")
    end
    timer:start(no_ms, 0, function()
        timer_callback()
        timer:stop()
    end)
    print("got here")
end

return M

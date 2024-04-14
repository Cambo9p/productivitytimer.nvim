local M = {}

local util = require 'productivitytimer.util'

local socket = require("socket")
local gettime = socket.gettime

-- main entrypoint TODO: docs for useage
function M.StartTimer(time)
    local curr_time = gettime()
    local extra_seconds = util.parse_time(time)
    if not extra_seconds then
        print("There was an error parsing")
    end
    print("got here")
end

return M

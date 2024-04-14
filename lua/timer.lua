local socket = require("socket")

local gettime = socket.gettime

-- takes the input to the StartTimer function 
--  and returns the time in seconds
local function parse_time(input)
    local number, unit = input:match("(%d+)(%a)")

    if not number or not unit then
        return nil
    end

    number = tonumber(number)

    if unit == "s" then
        return number
    elseif unit == "m" then
        return number * 60
    elseif unit == "h" then
        return number * 3600
    end

    return nil
end

-- main entrypoint
function StartTimer(time)
    local exp_time = gettime()
    local extra_seconds = parse_time(time)
    if not extra_seconds then
        -- there was an error 
        print("There was an error parsing")
    end
end

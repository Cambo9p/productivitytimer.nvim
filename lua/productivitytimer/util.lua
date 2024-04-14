local utils = {}

-- takes the input to the StartTimer function 
--  and returns the time in seconds
utils.parse_time = function (input)
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

return utils

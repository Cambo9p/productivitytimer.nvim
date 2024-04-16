local utils = {}

-- takes the input to the StartTimer function 
--  and returns the time in seconds
utils.parse_time = function (input)
    print(input)
    local number, unit = string.match(input, "(%d+)(%a)")

    print(number)
    print(unit)

    if not number or not unit then
        return nil
    end

    number = tonumber(number)

    if unit == "s" then
        return number * 1000
    elseif unit == "m" then
        return number * 60 * 1000
    elseif unit == "h" then
        return number * 3600 * 1000
    end

    return nil
end

return utils

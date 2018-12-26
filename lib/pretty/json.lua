-- Copyright (c) 2018, Souche Inc.

local Serializer = require "pretty.json.serializer"

local json = {}

function json.stringify(obj, replacer, space, print_address)
    if type(space) ~= "number" then space = 0 end
    local fragments = {}

    Serializer({
        print_address = print_address,
        stream = {
            write = function(self, ...)
                for i = 1, #{...} do
                    fragments[#fragments + 1] = ({...})[i]
                end
            end
        }
    }):json(obj, replacer, space, space)
    return table.concat(fragments)
end

return json

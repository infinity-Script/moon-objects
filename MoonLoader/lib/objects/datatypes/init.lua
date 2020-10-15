local dtypes = {
    ---@type Vector2
    Vector2 = require("../../objects.datatypes.vector2"),
    ---@type Vector3
    Vector3 = require("../../objects.datatypes.vector3"),
    ---@type RGB
    RGB = require('../../objects.datatypes.rgb')
}

-- Globalize DataTypes
for k, v in next, dtypes do
    _G[k] = v
end

return dtypes
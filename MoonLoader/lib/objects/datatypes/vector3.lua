local Class = require('../../objects.class')

---@class IVector3
---@field x number
---@field y number
---@field z number

---@public Vector3
---@alias Vector3 fun(x: number, y: number, z: number):IVector3
Vector3 = Class()

---@private
function Vector3:init(x, y, z)
    self.x = tonumber(x) or 0
    self.y = tonumber(y) or 0
    self.z = tonumber(z) or 0
    local mt = getmetatable(self)
    mt.__tostring = function(self)
        return ("%s, %s, %s"):format(self.x, self.y, self.z)
    end
    mt.__add = function(self, v)
        local function add(prop)self[prop] = self[prop]+v[prop] end
        add('x')
        add('y')
        add('z')
        return self
    end
end

function Vector3:toArray()
    return {self.x, self.y, self.z}
end

return Vector3
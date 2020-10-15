local Class = require('../../objects.class')

---@class IVector2
---@field x number
---@field y number

---@public Vector2
---@alias Vector2 fun(x: number, y: number):IVector3
Vector2 = Class()

function Vector2:init(x, y)
    self.x = x or 0
    self.y = y or 0
    
    getmetatable(self).__tostring = function(self)
        return ("%s, %s"):format(self.x, self.y)
    end
end


return Vector2
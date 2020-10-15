local Class = require('../../objects.class')

---@alias RGB fun(r: integer, g: integer, b: integer)
RGB = Class()

function RGB:init(r, g, b)
   self.r = r
   self.g = g
   self.b = b
   local mt = getmetatable(self)
   mt.__tostring = function(self)
      return ("%s, %s, %s"):format(self.r, self.g, self.b)
   end
end

return RGB
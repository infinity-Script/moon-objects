require('../../objects.enums')

local datatypes = require('../../objects.datatypes')

local classes = {
   Player = require('../../objects.player'),
   Client = require('../../objects.client'),
   Vector2 = datatypes.Vector2,
   Vector3 = datatypes.Vector3,
   RGB = datatypes.rgb
}

-- Copy classes to global table
for k, v in next, classes do
   _G[k] = v
end

return libs
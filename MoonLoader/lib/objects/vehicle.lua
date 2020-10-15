local Datatypes = require("../objects.datatypes")
local Vector3 = Datatypes.Vector3 ---@type Vector3
local Class = require("../objects.class")

--region Vehicle
---@class Vehicle
---@public Vehicle
---@type fun(driver: Player, handle: number, ped: number):Vehicle|table<string, number>
local Vehicle = Class()

---@private
---@type fun(driver: Player, handle: number, ped: number): Vehicle
function Vehicle:init(_driver, _handle, _ped)
    self.driver = _driver
    self.handle = _handle
    self.ped = _ped
end

-- Properties
---@private
Vehicle._vehicle = {
    get = function(self)
        return storeCarCharIsInNoSave(self.ped)
    end
}

Vehicle.id = {
    get = function(self)
        return self._vehicle
    end
}

---@type number
Vehicle.health = {
    get = function(self)
        return getCarHealth(self._vehicle)
    end,
    set = function(self, health)
        setCarHealth(self._vehicle, health)	
    end
}
---@type number
Vehicle.speed = {
    get = function(self)
        getCarSpeed(self._vehicle)
    end,
    set = function(self, speed)
        setCarCruiseSpeed(self._vehicle, speed)
    end
}
---@type IVector3
Vehicle.position = {
    get = function(self)
        return Vector3(getCarCoordinates(self._vehicle))
    end,
    set = function(self, v3)
        setCarCoordinatesNoOffset(self._vehicle, v3:unpack())
    end
}
---@type number
Vehicle.orientation = {
    get = function(self)
        return getCarHeading(self._vehicle)
    end,
    set = function(self, angle)
        setCarHeading(self._vehicle, (tonumber(angle) or 0)+0.0)
    end
}
---Sets the accuracy of driving
---@type number
Vehicle.drivingBehaviour = {
    ---@private
    get = function() end,
    ---@private
    set = function(self, behaviour)
        setCarDrivingStyle(self._vehicle, behaviour)
    end
}

-- Methods
function Vehicle:explode()
    explodeCar(self._vehicle)
end

function Vehicle:driveTo(destination)
    carGotoCoordinatesRacing(self._vehicle, destination.x, destination.y, destination.z)
end
--endregion Vehicle
return Vehicle
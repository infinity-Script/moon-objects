require('../../objects.datatypes')
require("../../objects.class")

local ClientCamera = class()
local ClientMessages = class()

---@public Client
Client = class()
Client.map = class()

---@private
function Client:init()
   self.camera = ClientCamera

   self.map.blips = class()
   self.map.blips.target = {
      get = function()
         local is_set, x, y, z = getTargetBlipCoordinates()
         return is_set and Vector3(x, y, z)
      end
   }
end

--region ClientMessages
---@class Messages
---@public

--[[
v.015	print(any value, ...)
v.019	printHelpString(string text)	(0ACA)
v.019	printStyledString(string text, int time, int style)	(0ACB)
v.019	printString(string text, int time)	(0ACC)
v.019	printStringNow(string text, int time)	(0ACD)
v.015	printBig(GxtString gxtString, int time, int style)	00BA
v.015	printText(GxtString gxtString, int time, int flag)	00BB
v.015	printTextNow(GxtString gxtString, int time, int flag)
]]

---@param text string
---@param messageType number Enum.PrintType.*
---@param _time number
---@param _style number Also flag
---@overload fun(text: string, messageType: number)
---@overload fun(text: string, messageType: number, time: number)
---@overload fun(text: string, messageType: number, time: number, style: number)
---@overload fun(text: string, messageType: number, time: number, flag: number)
---@
function Client:sendMessage(text, messageType, _time, _style)
   if messageType == Enum.PrintType.Help then
      printHelpString(text)
   elseif messageType == Enum.PrintType.Styled then
      printStyledString(text, _time, _style)
   elseif messageType == Enum.PrintType.String then
      printString(text, _time)
   elseif messageType == Enum.PrintType.StringNow then
      printStringNow(text, _time)
   elseif messageType == Enum.PrintType.Big then
      printBig(text, _time, _style)
   elseif messageType == Enum.PrintType.Text then
      printText(text, _time, _style)
   elseif messageType == Enum.PrintType.TextNow then
      printTextNow(text, _time, _style)
   end
end

--endregion ClientMessages

--region ClientCamera
---@class ClientCamera
---@public

---@param vehicle Vehicle
---@param mode number
---@param switchstyle number
function ClientCamera:lookAtCar(vehicle, mode, switchstyle)
   pointCameraAtCar(vehicle, mode, switchstyle)
end

---@param character Ped
---@param mode number
---@param switchstyle number
function ClientCamera:lookAtCharacter(character, mode, switchstyle)
   pointCameraAtChar(character, mode, switchstyle)
end

---
function ClientCamera:restore()
   restoreCamera()
end

--endregion ClientCamera
return Client
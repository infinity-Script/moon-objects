local Datatypes = require('../objects.datatypes')
local Vehicle = require('../objects.vehicle')
local Vector3 = Datatypes.Vector3 ---@type Vector3
local Class = require('../objects.class')


--region Player
---@class Player
---@public
---@type fun(PLAYER_HANDLE: number, PLAYER_PED: number):Player|table<string, number>
Player = Class()
---@private
---@return Player
function Player:init(_handle, _ped)
  self.handle = _handle
  self.ped = _ped
  ---@type Vehicle
  ---@private
  self._vehicle = Vehicle(self, self.handle, self.ped)
end
---@type number
Player.position = {
  get = function(self)
    return Vector3(getCharCoordinates(self.ped))
  end,
  set = function(self, v3)
    setCharCoordinates(self.ped, v3.x, v3.y, v3.z)
  end
}
---@type number
Player.health = {
  get = function(self)
    return getCharHealth(self.ped)
  end,
  set = function(self, health)
      return setCharHealth(self.ped, health)
  end
}
---@type number
Player.money = {
  get = function(self)
      return getPlayerMoney(self.handle)
  end,
  set = function(self, money)
    return givePlayerMoney(self.handle, money-self.money)
  end
}
---@type number
Player.wantedLevel = {
  get = function(self)
    return getMaxWantedLevel()
  end,
  set = function(self, level)
    alterWantedLevel(self.handle, level)
  end
}
---@type Vehicle
Player.vehicle = {
  ---@private
  get = function(self)
    if isCharInAnyCar(self.ped) then
      return self._vehicle
    end
  end
}
---@type boolean
Player.isPlaying = {
  get = function(self)
    return isPlayerPlaying(self.handle)
  end 
}
---@type boolean
Player.isPlayingAnim = {
  get = function(self)
    return  isCharPlayingAnim(self.handle)
  end
}
---@type boolean
Player.isControlLocked = {
  get = function(self)
    return isPlayerControlLocked()
  end
}

---@type boolean
Player.isDead = {
  get = function(self)
    return isPlayerDead(self.handle)
  end
}
---@type boolean
Player.isPressingHorn = {
  get = function(self)
    return isPlayerPressingHorn(self.handle)
  end
}
---@type boolean
Player.isRemoteModeActive = {
  get = function(self)
    return isPlayerInRemoteMode(self.handle)
  end
}
---@type boolean
Player.isControllable = {
  get = function(self)
    return isPlayerControllable(self.handle)
  end
}
---@type boolean
Player.isTakingTaxi = {
  get = function(self)
    return isPlayerInShortcutTaxi(self.handle)
  end
}
---@type boolean
Player.isTargeting = {
  get = function(self)
    return isPlayerTargettingAnything(self.handle)
  end
}
---@type boolean
Player.isLocatedForConversation = {
  get = function(self)
    return isPlayerInPositionForConversation(self.ped)
  end
}
---@type boolean
Player.isControlOn = {
  get = function(self)
    return isPlayerControlOn(self.handle)
  end
}
---@type boolean
Player.isUsingJetpack = {
  get = function(self)
    return isPlayerUsingJetpack(self.handle)
  end
}
---@type boolean
Player.isClimbing = {
  get = function(self)
    return isPlayerClimbing(self.handle)
  end
}
---@type boolean
Player.isOnMission = {
  get = function(self)
    return getGameGlobal(409) == 1
  end
}
---@type boolean
Player.isViewingCutscene = {
  get = function()
    if getCutsceneTime() == nil or hasCutsceneFinished() or wasCutsceneSkipped() then
      return false
    end
    return true
  end
}
---@type table<string, boolean>
Player.playingAnimations = Class()
---@type boolean
Player.playingAnimations.wheelie = {
  get = function(self)
    return isPlayerPerformingWheelie(self.handle)
  end
}
---@type boolean
Player.playingAnimations.stoppie = {
  get = function(self)
    return isPlayerPerformingStoppie(self.handle)
  end
}
-- Methods
---Kills player.
---@return nil
function Player:Kill()
  self.health = 0
end
---Returns true if player is aiming at the given character.
---@type fun(character: number): boolean
---@return boolean
function Player:isTargetingAtChar(self, character)
  return isPlayerTargettingChar(self.handle, character)
end
---Returns true if player is aiming at the given object.
---@type fun(object: any): boolean
---@return boolean
function Player:isTargetingAtObject(self, object)
  return isPlayerTargettingObject(self.handle, object)
end
---Returns true if the player is wearing a skin at the given bodypart.
---@type fun(bodypart: string, skin: number): boolean
---@return boolean
function Player:isWearing(self, bodypart, skin)
  return isPlayerWearing(self.handle, bodypart, skin)
end
---Returns true if the player is within the zone given.
---@type fun(zone: string): boolean
---@return boolean
function Player:isInInfoZone(self, zone)
  return isPlayerInInfoZone(self.handle, zone)
end
---Clears active tasks from player.
---@type fun(): nil
function Player:clearTasks()
  clearCharTasks(self.ped)
end
--endregion Player

return Player

--region Enum
---@class Enum
---@public
---@type table<string, number>
Enum = {}
---@type table<string, number>
---@public

Enum.DrivingBehaviour = {
   Best = 1,
   Good = 2,
   Fair = 3,
   Bad = 4,
   Worst = 5
}

Enum.PrintType = {
   --- printHelpString()
   Help = 0,
   --- printStyledString()
   Styled = 1,
   --- printString()
   String = 2,
   --- printStringNow()
   StringNow = 3,
   --- printBig()
   Big = 4,
   --- printText()
   Text = 5,
   --- printTextNow()
   TextNow = 6,
}

---@type Enum.KeyCode
Enum.KeyCode = require("../../objects.enums.key-code")

--endregion Enum
_G["Enum"] = Enum

return Enum
# Moon Objects
## Example
```lua
-- CWD: /moonloader/
require("lib.objects") -- Imports: Player(), Client(), Vector2(), Vector3(), RGB()

function main()
    local player = Player(PLAYER_HANDLE, PLAYER_PED) 

    while true do
        wait(500)
        if player.wantedLevel >= 0 then -- Does player have more than one star?
            player:Kill() -- If he does kill him
        end
    end
end
```
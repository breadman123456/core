-- Credits to Loqrin
-- Original Code: https://github.com/Loqrin/FiveM-Gamemode-Wreckfest/blob/master/modules/never_wanted.lua
local function neverWanted(playerID)
	if GetPlayerWantedLevel(playerID) ~= 0 then
        SetPlayerWantedLevel(playerID, 0, false)
        SetPlayerWantedLevelNow(playerID, false)
    end
end

Citizen.CreateThread(function()
    if neverWantedModule then
        while true do 
            local playerID = PlayerId()
            neverWanted(playerID)
            Citizen.Wait(1)
        end
    end
end)

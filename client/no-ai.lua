-- Credits to Martin North
-- Original Source: https://forum.cfx.re/t/release-remove-all-ai-and-remove-random-parked-vehicles/638724/1
Citizen.CreateThread(function()
    while true do
    	SetVehicleDensityMultiplierThisFrame(0.0)
		SetPedDensityMultiplierThisFrame(0.0)
		SetRandomVehicleDensityMultiplierThisFrame(0.0)
		SetParkedVehicleDensityMultiplierThisFrame(0.0)
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
		
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed) 
		RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
		
		SetGarbageTrucks(0)
		SetRandomBoats(0)    	
		Citizen.Wait(1)
	end
end)

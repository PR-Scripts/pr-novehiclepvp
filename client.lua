-- client.lua

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()

        -- Check if the player is in a vehicle and disable shooting
        if IsPedInAnyVehicle(playerPed, false) then
            -- Disable primary attack (left-click shooting)
            DisableControlAction(0, 24, true)  -- Disable attack
            DisableControlAction(0, 69, true)  -- Disable vehicle attack
            DisableControlAction(0, 70, true)  -- Disable vehicle attack2
            DisableControlAction(0, 92, true)  -- Disable vehicle passenger attack
            DisableControlAction(0, 114, true) -- Disable alternate attack
            DisableControlAction(0, 257, true) -- Disable input group attack

            -- Disable melee attack while in a vehicle
            DisableControlAction(0, 140, true) -- Melee attack light
            DisableControlAction(0, 141, true) -- Melee attack heavy
            DisableControlAction(0, 142, true) -- Melee attack alternate
        end
    end
end)

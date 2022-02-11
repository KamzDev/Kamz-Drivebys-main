Kamz = {}

local current_display_name = nil

Kamz.HandleDriveby = function(current_veh, current_seat, veh_display_name)
    local player = PlayerId()
    
    current_display_name = veh_display_name

    if Config.WhitelistedVehicles[veh_display_name] then
        SetPlayerCanDoDriveBy(player, true)
    else
        SetPlayerCanDoDriveBy(player, false)
        return
    end

    if not Config.DriverShoot and current_seat == -1 then
        SetPlayerCanDoDriveBy(player, false)
        return 
    end

end

RegisterNetEvent("Kamz-nodriveby:ChickenSandwhich")
AddEventHandler("Kamz-nodriveby:ChickenSandwhich", Kamz.HandleDriveby)

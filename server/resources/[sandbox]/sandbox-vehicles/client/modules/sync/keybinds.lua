AddEventHandler('Vehicles:Client:StartUp', function()
    exports["sandbox-kbs"]:Add('emergency_lights', 'Q', 'keyboard', 'Vehicle - Toggle Emergency Lighting',
        function()
            exports['sandbox-vehicles']:SyncEmergencyLightsToggle()
        end)

    exports["sandbox-kbs"]:Add('emergency_sirens', 'LMENU', 'keyboard', 'Vehicle - Toggle Emergency Sirens',
        function()
            exports['sandbox-vehicles']:SyncEmergencySirenToggle()
        end)

    exports["sandbox-kbs"]:Add('emergency_sirens_tone', 'R', 'keyboard', 'Vehicle - Cycle Emergency Siren Tone',
        function()
            exports['sandbox-vehicles']:SyncEmergencySirenCycle()
        end)

    exports["sandbox-kbs"]:Add('emergency_airhorn', 'E', 'keyboard', 'Vehicle - Emergency Airhorn', function()
        exports['sandbox-vehicles']:SyncEmergencyAirhornSet(true)
    end, function()
        exports['sandbox-vehicles']:SyncEmergencyAirhornSet(false)
    end)

    exports["sandbox-kbs"]:Add('veh_indicators_hazards', '', 'keyboard', 'Vehicle - Indicator - Hazards', function()
        exports['sandbox-vehicles']:SyncIndicatorsSet(0)
    end)

    exports["sandbox-kbs"]:Add('veh_indicators_right', '', 'keyboard', 'Vehicle - Indicator - Right', function()
        exports['sandbox-vehicles']:SyncIndicatorsSet(1)
    end)

    exports["sandbox-kbs"]:Add('veh_indicators_left', '', 'keyboard', 'Vehicle - Indicator - Left', function()
        exports['sandbox-vehicles']:SyncIndicatorsSet(2)
    end)

    exports["sandbox-kbs"]:Add('veh_neons_toggle', '', 'keyboard', 'Vehicle - Toggle Neons/Underglow', function()
        exports['sandbox-vehicles']:SyncNeonsToggle()
    end)

    exports["sandbox-kbs"]:Add('veh_bike_drop', 'G', 'keyboard', 'Vehicle - Put Down Bicycle', function()
        exports['sandbox-vehicles']:SyncBikeDrop()
    end)

    exports["sandbox-kbs"]:Add('veh_k9_leavevehicle', '', 'keyboard', 'Vehicle - K9 - Get Out of Vehicle',
        function()
            if LocalPlayer.state.isK9Ped then
                TriggerEvent("Vehicles:Client:K9LeaveVehicle")
            end
        end)
end)

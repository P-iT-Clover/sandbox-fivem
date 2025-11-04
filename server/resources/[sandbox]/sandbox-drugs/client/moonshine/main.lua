_stills = {}
_barrels = {}
local _stillModels = {
    `prop_still`
}

local _barrelModels = {
    `prop_wooden_barrel`,
}

local function RunSkillChecks(total)
    local success = 0
    local failed = 0

    for i = 1, total do
        local p = promise.new()
        exports['sandbox-games']:MinigamePlayRoundSkillbar(1.15, 3, {
            onSuccess = function()
                success += 1
                Wait(50)
                p:resolve(true)
            end,
            onFail = function()
                failed += 1
                Wait(50)
                p:resolve(true)
            end,
        }, {
            useWhileDead = false,
            vehicle = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                anim = "dj",
            },
        })

        Citizen.Await(p)
    end

    return {
        total = total,
        success = success,
        failed = failed,
    }
end

AddEventHandler("Drugs:Client:Startup", function()
    for k, v in ipairs(_stillModels) do
        exports.ox_target:addModel(v, {
            {
                label = "Dismantle Still (Destroys Still)",
                icon = "fas fa-hand",
                event = "Drugs:Client:Moonshine:PickupStill",
                distance = 3.0,
                canInteract = function(entity)
                    local entState = Entity(entity).state
                    return entState?.isMoonshineStill and
                        (LocalPlayer.state.onDuty == "police" or _barrels[entState?.stillId]?.owner == LocalPlayer.state.Character:GetData("SID"))
                end,
            },
            {
                label = "Still Info",
                icon = "fas fa-info",
                event = "Drugs:Client:Moonshine:StillDetails",
                distance = 3.0,
                canInteract = function(entity)
                    return Entity(entity).state?.isMoonshineStill
                end,
            },
            {
                label = "Start Brewing",
                icon = "fas fa-clock",
                event = "Drugs:Client:Moonshine:StartCook",
                distance = 3.0,
                canInteract = function(entity)
                    local entState = Entity(entity).state
                    return entState?.isMoonshineStill and
                        (not _stills[entState.stillId]?.cooldown or GetCloudTimeAsInt() > _stills[entState.stillId]?.cooldown) and
                        (_stills[entState.stillId].owner == nil or _stills[entState.stillId].owner == LocalPlayer.state.Character:GetData("SID"))
                end,
            },
            {
                label = "Collect Brew",
                icon = "fas fa-box",
                event = "Drugs:Client:Moonshine:PickupCook",
                distance = 3.0,
                canInteract = function(entity)
                    local entState = Entity(entity).state
                    return entState?.isMoonshineStill and _stills[entState.stillId]?.activeBrew and
                        _stills[entState.stillId]?.pickupReady and
                        (_stills[entState.stillId]?.owner == nil or _stills[entState.stillId]?.owner == LocalPlayer.state.Character:GetData("SID"))
                end,
            },
        })
    end

    for k, v in ipairs(_barrelModels) do
        exports.ox_target:addModel(v, {
            {
                label = "Destroy Barrel",
                icon = "fas fa-hand",
                event = "Drugs:Client:Moonshine:PickupBarrel",
                distance = 3.0,
                canInteract = function(entity)
                    local entState = Entity(entity).state
                    return entState?.isMoonshineBarrel and
                        (LocalPlayer.state.onDuty == "police" or _barrels[entState?.barrelId]?.owner == LocalPlayer.state.Character:GetData("SID"))
                end,
            },
            {
                label = "Barrel Info",
                icon = "fas fa-info",
                event = "Drugs:Client:Moonshine:BarrelDetails",
                distance = 3.0,
                canInteract = function(entity)
                    return Entity(entity).state?.isMoonshineBarrel
                end,
            },
            {
                label = function(entity)
                    local entState = Entity(entity).state
                    return string.format("Fill Jars (Requires %s Empty Jars)",
                        (_barrels[entState.barrelId]?.brewData?.Drinks or 15))
                end,
                icon = "fas fa-box",
                event = "Drugs:Client:Moonshine:PickupBrew",
                distance = 3.0,
                canInteract = function(entity)
                    local entState = Entity(entity).state
                    return entState?.isMoonshineBarrel and _barrels[entState.barrelId]?.pickupReady and
                        (_barrels[entState.barrelId]?.owner == nil or _barrels[entState.barrelId]?.owner == LocalPlayer.state.Character:GetData("SID"))
                end,
            },
        })
    end

    exports["sandbox-base"]:RegisterClientCallback("Drugs:Moonshine:PlaceStill", function(data, cb)
        exports['sandbox-objects']:PlacerStart(`prop_still`, "Drugs:Client:Moonshine:FinishPlacement", data, 2)
        cb()
    end)

    exports["sandbox-base"]:RegisterClientCallback("Drugs:Moonshine:PlaceBarrel", function(data, cb)
        exports['sandbox-objects']:PlacerStart(`prop_wooden_barrel`, "Drugs:Client:Moonshine:FinishPlacementBarrel", data,
            2)
        cb()
    end)

    exports["sandbox-base"]:RegisterClientCallback("Drugs:Moonshine:Use", function(data, cb)
        Wait(400)
        exports['sandbox-games']:MinigamePlayRoundSkillbar(0.8, 8, {
            onSuccess = function()
                cb(true)
            end,
            onFail = function()
                cb(false)
            end,
        }, {
            useWhileDead = false,
            vehicle = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "amb@world_human_drinking@coffee@male@idle_a",
                anim = "idle_c",
                flags = 48,
            },
            prop = {
                model = "prop_beer_bottle",
                bone = 28422,
                coords = { x = 0.0, y = 0.0, z = -0.15 },
                rotation = { x = 0.0, y = 0.0, z = 0.0 },
            },
        })
    end)
end)

RegisterNetEvent("Drugs:Client:Moonshine:SetupStills", function(stills)
    CreateThread(function()
        loadModel(`prop_still`)
        for k, v in pairs(stills) do
            _stills[k] = v
            local obj = CreateObject(`prop_still`, v.coords.x, v.coords.y, v.coords.z, false, true, false)
            SetEntityHeading(obj, v.heading)
            while not DoesEntityExist(obj) do
                Wait(1)
            end
            PlaceObjectOnGroundProperly(obj)
            _stills[k].entity = obj
            Entity(obj).state.isMoonshineStill = true
            Entity(obj).state.stillId = v.id
            Wait(1)
        end
    end)
end)

RegisterNetEvent("Drugs:Client:Moonshine:SetupBarrels", function(barrels)
    CreateThread(function()
        loadModel(`prop_wooden_barrel`)
        for k, v in pairs(barrels) do
            _barrels[k] = v
            local obj = CreateObject(`prop_wooden_barrel`, v.coords.x, v.coords.y, v.coords.z, false, true, false)
            SetEntityHeading(obj, v.heading)
            while not DoesEntityExist(obj) do
                Wait(1)
            end
            PlaceObjectOnGroundProperly(obj)
            _barrels[k].entity = obj
            Entity(obj).state.isMoonshineBarrel = true
            Entity(obj).state.barrelId = v.id
            Wait(1)
        end
    end)
end)

RegisterNetEvent("Characters:Client:Logout", function()
    CreateThread(function()
        for k, v in pairs(_stills) do
            if v?.entity ~= nil and DoesEntityExist(v?.entity) then
                DeleteEntity(v?.entity)
                _stills[k] = nil
            end
            Wait(1)
        end
    end)
end)

RegisterNetEvent("Characters:Client:Logout", function()
    CreateThread(function()
        for k, v in pairs(_barrels) do
            if v?.entity ~= nil and DoesEntityExist(v?.entity) then
                DeleteEntity(v?.entity)
                _barrels[k] = nil
            end
            Wait(1)
        end
    end)
end)

RegisterNetEvent("Drugs:Client:Moonshine:CreateStill", function(still)
    CreateThread(function()
        loadModel(`prop_still`)
        _stills[still.id] = still
        local obj = CreateObject(`prop_still`, still.coords.x, still.coords.y, still.coords.z, false, true, false)
        SetEntityHeading(obj, still.heading)
        while not DoesEntityExist(obj) do
            Wait(1)
        end

        _stills[still.id].entity = obj

        Entity(obj).state.isMoonshineStill = true
        Entity(obj).state.stillId = still.id
    end)
end)

RegisterNetEvent("Drugs:Client:Moonshine:RemoveStill", function(stillId)
    CreateThread(function()
        local objs = GetGamePool("CObject")
        for k, v in ipairs(objs) do
            local entState = Entity(v).state
            if entState.isMoonshineStill and entState.stillId == stillId then
                DeleteEntity(v)
            end
        end
        _stills[stillId] = nil
    end)
end)

RegisterNetEvent("Drugs:Client:Moonshine:UpdateStillData", function(stillId, data)
    _stills[stillId] = data
end)

AddEventHandler("Drugs:Client:Moonshine:FinishPlacement", function(data, endCoords)
    TaskTurnPedToFaceCoord(LocalPlayer.state.ped, endCoords.coords.x, endCoords.coords.y, endCoords.coords.z, 0.0)
    Wait(1000)
    exports['sandbox-hud']:Progress({
        name = "meth_pickup",
        duration = (math.random(5) + 10) * 1000,
        label = "Placing",
        useWhileDead = false,
        canCancel = true,
        ignoreModifier = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            task = "CODE_HUMAN_MEDIC_KNEEL",
        },
    }, function(status)
        if not status then
            exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:FinishStillPlacement", {
                data = data,
                endCoords = endCoords
            }, function(s)

            end)
        end
    end)
end)

AddEventHandler("Drugs:Client:Moonshine:FinishPlacementBarrel", function(data, endCoords)
    TaskTurnPedToFaceCoord(LocalPlayer.state.ped, endCoords.coords.x, endCoords.coords.y, endCoords.coords.z, 0.0)
    Wait(1000)
    exports['sandbox-hud']:Progress({
        name = "meth_pickup",
        duration = 3 * 1000,
        label = "Placing",
        useWhileDead = false,
        canCancel = true,
        ignoreModifier = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            task = "CODE_HUMAN_MEDIC_KNEEL",
        },
    }, function(status)
        if not status then
            exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:FinishBarrelPlacement", {
                data = data,
                endCoords = endCoords
            }, function(s)

            end)
        end
    end)
end)

AddEventHandler("Drugs:Client:Moonshine:PickupStill", function(entity, data)
    if Entity(entity.entity).state?.isMoonshineStill then
        exports['sandbox-hud']:Progress({
            name = "meth_pickup",
            duration = (math.random(5) + 15) * 1000,
            label = "Picking Up Still",
            useWhileDead = false,
            canCancel = true,
            ignoreModifier = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                task = "CODE_HUMAN_MEDIC_KNEEL",
            },
        }, function(status)
            if not status then
                exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:PickupStill", Entity(entity.entity).state
                    .stillId, function(s)
                        -- if s then
                        --     DeleteObject(entity.entity)
                        -- end
                    end)
            end
        end)
    end
end)

AddEventHandler("Drugs:Client:Moonshine:StartCook", function(entity, data)
    local entState = Entity(entity.entity).state
    if entState.isMoonshineStill and entState.stillId then
        exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:CheckStill", entState.stillId, function(s)
            if s then
                exports['sandbox-hud']:Progress({
                    name = "meth_pickup",
                    duration = 5 * 1000,
                    label = "Preparing",
                    useWhileDead = false,
                    canCancel = true,
                    ignoreModifier = true,
                    controlDisables = {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    },
                    animation = {
                        anim = "dj",
                    },
                }, function(status)
                    if not status then
                        local results = RunSkillChecks(_stillTiers[_stills[entState.stillId].tier]?.checks or 10)

                        LocalPlayer.state.doingAction = false

                        exports['sandbox-hud']:Progress({
                            name = "meth_pickup",
                            duration = 2 * 1000,
                            label = "Finishing",
                            useWhileDead = false,
                            canCancel = false,
                            ignoreModifier = true,
                            controlDisables = {
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            },
                            animation = {
                                anim = "dj",
                            },
                        }, function(status)
                            if not status then
                                exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:StartCooking", {
                                    stillId = entState.stillId,
                                    results = results
                                })
                            end
                        end)
                    end
                end)
            else
                exports["sandbox-hud"]:Notification("error", "Still Is Not Ready")
            end
        end)
    end
end)

AddEventHandler("Drugs:Client:Moonshine:PickupCook", function(entity, data)
    local entState = Entity(entity.entity).state
    if entState.isMoonshineStill and entState.stillId then
        exports['sandbox-hud']:Progress({
            name = "meth_pickup",
            duration = 5 * 1000,
            label = "Emptying Still",
            useWhileDead = false,
            canCancel = true,
            ignoreModifier = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                anim = "dj",
            },
        }, function(status)
            if not status then
                exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:PickupCook", entState.stillId, function(s)
                    if s then
                    else
                        exports["sandbox-hud"]:Notification("error", "Still Is Not Ready")
                    end
                end)
            end
        end)
    end
end)

AddEventHandler("Drugs:Client:Moonshine:PickupBrew", function(entity, data)
    local entState = Entity(entity.entity).state
    if exports.ox_inventory:ItemsHas("moonshine_jar", (_barrels[entState.barrelId]?.brewData?.Drinks or 15), false) then
        local entState = Entity(entity.entity).state
        if entState.isMoonshineBarrel and entState.barrelId then
            exports['sandbox-hud']:Progress({
                name = "meth_pickup",
                duration = 5 * 1000,
                label = "Emptying Barrel",
                useWhileDead = false,
                canCancel = true,
                ignoreModifier = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
                animation = {
                    anim = "dj",
                },
            }, function(status)
                if not status then
                    exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:PickupBrew", entState.barrelId,
                        function(s) end)
                end
            end)
        end
    else
        exports["sandbox-hud"]:Notification("error", string.format("Missing Empty Jars (Requires %s Empty Jars",
            (_barrels[entState.barrelId]?.brewData?.Drinks or 15)))
    end
end)

AddEventHandler("Drugs:Client:Moonshine:StillDetails", function(entity, data)
    local entState = Entity(entity.entity).state
    if entState.isMoonshineStill and entState.stillId then
        exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:GetStillDetails", entState.stillId, function(s)
            if s then
                exports['sandbox-hud']:ListMenuShow(s)
            end
        end)
    end
end)

RegisterNetEvent("Drugs:Client:Moonshine:UpdateBarrelData", function(barrelId, data)
    _barrels[barrelId] = data
end)

RegisterNetEvent("Drugs:Client:Moonshine:CreateBarrel", function(barrel)
    CreateThread(function()
        loadModel(`prop_wooden_barrel`)
        _barrels[barrel.id] = barrel
        local obj = CreateObject(`prop_wooden_barrel`, barrel.coords.x, barrel.coords.y, barrel.coords.z, false, true,
            false)
        SetEntityHeading(obj, barrel.heading)
        PlaceObjectOnGroundProperly(obj)
        while not DoesEntityExist(obj) do
            Wait(1)
        end

        _barrels[barrel.id].entity = obj

        Entity(obj).state.isMoonshineBarrel = true
        Entity(obj).state.barrelId = barrel.id
    end)
end)

RegisterNetEvent("Drugs:Client:Moonshine:RemoveBarrel", function(barrelId)
    CreateThread(function()
        local objs = GetGamePool("CObject")
        for k, v in ipairs(objs) do
            local entState = Entity(v).state
            if entState.isMoonshineBarrel and entState.barrelId == barrelId then
                DeleteEntity(v)
            end
        end
        _barrels[barrelId] = nil
    end)
end)

AddEventHandler("Drugs:Client:Moonshine:PickupBarrel", function(entity, data)
    if Entity(entity.entity).state?.isMoonshineBarrel then
        exports['sandbox-hud']:Progress({
            name = "meth_pickup",
            duration = 8 * 1000,
            label = "Destroying",
            useWhileDead = false,
            canCancel = true,
            ignoreModifier = true,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                task = "CODE_HUMAN_MEDIC_KNEEL",
            },
        }, function(status)
            if not status then
                exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:PickupBarrel",
                    Entity(entity.entity).state.barrelId,
                    function(s)
                        -- if s then
                        --     DeleteObject(entity.entity)
                        -- end
                    end)
            end
        end)
    end
end)

AddEventHandler("Drugs:Client:Moonshine:BarrelDetails", function(entity, data)
    local entState = Entity(entity.entity).state
    if entState.isMoonshineBarrel and entState.barrelId then
        exports["sandbox-base"]:ServerCallback("Drugs:Moonshine:GetBarrelDetails", entState.barrelId, function(s)
            if s then
                exports['sandbox-hud']:ListMenuShow(s)
            end
        end)
    end
end)

local phoneModel = `vw_prop_casino_phone_01a`
local _createdPhones = {}

function CreateBizPhoneObject(coords, rotation)
    RequestModel(phoneModel)
    while not HasModelLoaded(phoneModel) do
        Wait(1)
    end

    local obj = CreateObject(phoneModel, coords.x, coords.y, coords.z, false, true, false)
    SetEntityRotation(obj, rotation.x, rotation.y, rotation.z)
    FreezeEntityPosition(obj, true)
    SetEntityCoords(obj, coords.x, coords.y, coords.z)

    while not DoesEntityExist(obj) do
        Wait(1)
    end

    return obj
end

function CreateBizPhones()
    while GlobalState.BizPhones == nil do
        Wait(100)
    end

    for k, v in pairs(GlobalState.BizPhones) do
        local object = CreateBizPhoneObject(v.coords, v.rotation)

        exports.ox_target:addEntity(object, {
            {
                icon = "phone-volume",
                label = "Phone",
                onSelect = function()
                    TriggerEvent("Phone:Client:MakeBizCall", { id = v.id })
                end,
                groups = { v.job },
                canInteract = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s", data.id)]
                        if pData and pData.state > 1 then
                            return true
                        end
                    end
                end,
                label = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s", data.id)]
                        if pData then
                            if pData.state == 2 then
                                return string.format("On Call (%s)", pData.callingStr)
                            else
                                return string.format("Dialing (%s)", pData.number)
                            end
                        end
                    end
                    return ""
                end,
            },
            {
                icon = "phone-arrow-up-right",
                label = "Make Call",
                event = "Phone:Client:MakeBizCall",
                onSelect = function()
                    TriggerEvent("Phone:Client:MakeBizCall", { id = v.id })
                end,
                groups = { v.job },
                canInteract = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s", data.id)]
                        if not pData then
                            return true
                        end
                    end
                end,
            },
            {
                icon = "phone",
                label = "Answer Phone",
                onSelect = function()
                    TriggerEvent("Phone:Client:AcceptBizCall", { id = v.id })
                end,
                groups = { v.job },
                canInteract = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s", data.id)]
                        if pData and pData.state == 1 then
                            return true
                        end
                    end
                end,
                label = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s", data.id)]
                        if pData and pData.state == 1 then
                            return string.format("Answer Call From %s", pData.callingStr)
                        end
                    end
                    return ""
                end,
            },
            {
                icon = "phone-hangup",
                label = "Hang Up",
                onSelect = function()
                    TriggerEvent("Phone:Client:DeclineBizCall", { id = v.id })
                end,
                groups = { v.job },
                canInteract = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s", data.id)]
                        if pData then
                            return true
                        end
                    end
                end,
            },
            {
                icon = "phone-slash",
                label = "Mute Phone",
                event = "Phone:Client:MuteBiz",
                onSelect = function()
                    TriggerEvent("Phone:Client:MuteBiz", { id = v.id })
                end,
                groups = { v.job },
                label = function(data)
                    if data then
                        local pData = GlobalState[string.format("BizPhone:%s:Muted", data.id)]
                        if pData then
                            return "Unmute Phone"
                        end
                    end
                    return "Mute Phone"
                end,
            }
        })

        table.insert(_createdPhones, object)
    end
end

function CleanupBizPhones()
    for k, v in ipairs(_createdPhones) do
        if DoesEntityExist(v) then
            DeleteEntity(v)
        end
    end

    _createdPhones = {}
end

AddEventHandler("Phone:Client:MakeBizCall", function(entityData, data)
    exports['sandbox-hud']:InputShow("Phone Number", "Number to Call", {
        {
            id = "number",
            type = "text",
            options = {
                helperText = "E.g 555-555-5555",
                inputProps = {
                    pattern = "[0-9-]+",
                    minlength = 12,
                    maxlength = 12,
                },
            },
        },
    }, "Phone:Client:MakeBizCallConfirm", data)
end)

AddEventHandler("Phone:Client:MuteBiz", function(entityData, data)
    exports["sandbox-base"]:ServerCallback("Phone:MuteBiz", data.id, function(success, state)
        if success then
            if state then
                exports["sandbox-hud"]:Notification("error", "Muted Phone")
            else
                exports["sandbox-hud"]:Notification("success", "Unmuted Phone")
            end
        else
            exports["sandbox-hud"]:Notification("error", "Unable to Mute Phone")
        end
    end)
end)

AddEventHandler("Phone:Client:MakeBizCallConfirm", function(values, data)
    if values.number and data.id and GlobalState.BizPhones[data.id] then
        exports["sandbox-base"]:ServerCallback("Phone:MakeBizCall", { id = data.id, number = values.number },
            function(success)
                LocalPlayer.state.bizCall = data.id
                local startCoords = GlobalState.BizPhones[data.id].coords

                if success then
                    CreateThread(function()
                        exports['sandbox-animations']:EmotesPlay("phonecall2", true)
                        exports["sandbox-sounds"]:LoopOne("ringing.ogg", 0.1)
                        exports['sandbox-hud']:InfoOverlayShow("Dialing",
                            string.format("Dailing Number: %s", values.number))

                        while LocalPlayer.state.loggedIn and LocalPlayer.state.bizCall do
                            if #(GetEntityCoords(LocalPlayer.state.ped) - startCoords) >= 10.0 then
                                TriggerServerEvent("Phone:Server:ForceEndBizCall")
                            end
                            Wait(500)
                        end

                        exports['sandbox-animations']:EmotesForceCancel()
                        exports["sandbox-sounds"]:StopOne("ringing.ogg")
                        exports['sandbox-hud']:InfoOverlayClose()
                    end)
                else
                    exports["sandbox-hud"]:Notification("error", "Failed to Make Call")
                end
            end)
    end
end)

RegisterNetEvent("Phone:Client:Phone:AcceptBizCall", function(number)
    if LocalPlayer.state.bizCall then
        exports['sandbox-hud']:InfoOverlayShow("On Call", string.format("To Number: %s", number))
        exports["sandbox-sounds"]:StopOne("ringing.ogg")
    end
end)

RegisterNetEvent("Phone:Client:Biz:Recieve", function(id, coords, radius)
    if LocalPlayer.state.loggedIn and not GlobalState[string.format("BizPhone:%s:Muted", id)] then
        local myCoords = GetEntityCoords(LocalPlayer.state.ped)
        if #(myCoords - coords) <= 150.0 then
            exports["sandbox-sounds"]:LoopLocation(string.format("bizphones-%s", id), coords, radius, "bizphone.ogg", 0.1)
            SetTimeout(30000, function()
                exports["sandbox-sounds"]:StopDistance(string.format("bizphones-%s", id), "bizphone.ogg")
            end)
        end
    end
end)

AddEventHandler("Phone:Client:DeclineBizCall", function(entityData, data)
    exports["sandbox-base"]:ServerCallback("Phone:DeclineBizCall", data.id, function(success)
        if not success then
            exports["sandbox-hud"]:Notification("error", "Failed to Decline Call")
        end
    end)
end)

AddEventHandler("Phone:Client:AcceptBizCall", function(entityData, data)
    if data.id and GlobalState.BizPhones[data.id] then
        exports["sandbox-base"]:ServerCallback("Phone:AcceptBizCall", data.id, function(success, callStr)
            local startCoords = GlobalState.BizPhones[data.id].coords
            LocalPlayer.state.bizCall = data.id

            if success then
                CreateThread(function()
                    exports['sandbox-animations']:EmotesPlay("phonecall2", true)
                    exports['sandbox-hud']:InfoOverlayShow("On Call", string.format("From Number: %s", callStr))
                    while LocalPlayer.state.loggedIn and LocalPlayer.state.bizCall do
                        if #(GetEntityCoords(LocalPlayer.state.ped) - startCoords) >= 10.0 then
                            TriggerServerEvent("Phone:Server:ForceEndBizCall")
                        end
                        Wait(500)
                    end

                    exports['sandbox-animations']:EmotesForceCancel()
                    exports['sandbox-hud']:InfoOverlayClose()
                end)
            else
                exports["sandbox-hud"]:Notification("error", "Failed to Accept Call")
            end
        end)
    end
end)

RegisterNetEvent("Phone:Client:Biz:Answered", function(id)
    exports["sandbox-sounds"]:StopDistance(string.format("bizphones-%s", id), "bizphone.ogg")
end)

RegisterNetEvent("Phone:Client:Biz:End", function(id)
    exports["sandbox-sounds"]:StopDistance(string.format("bizphones-%s", id), "bizphone.ogg")

    if LocalPlayer.state.bizCall and LocalPlayer.state.bizCall == id then
        LocalPlayer.state.bizCall = nil
        exports["sandbox-sounds"]:PlayOne("ended.ogg", 0.15)
    end
end)

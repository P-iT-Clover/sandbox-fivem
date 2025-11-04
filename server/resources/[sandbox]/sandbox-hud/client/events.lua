AddEventHandler("Vehicles:Client:EnterVehicle", function(currentVehicle, currentSeat)
	GLOBAL_VEH = currentVehicle
	exports['sandbox-hud']:VehicleShow()
	--Hud.Minimap:Set()
end)

AddEventHandler("Vehicles:Client:ExitVehicle", function(currentVehicle, currentSeat)
	exports['sandbox-hud']:VehicleHide()
	GLOBAL_VEH = nil
end)

AddEventHandler("Characters:Client:Spawn", function()
	SendNUIMessage({
		type = "SET_CONFIG",
		data = {
			config = LocalPlayer.state.Character:GetData("HUDConfig"),
		},
	})

	exports['sandbox-hud']:Show()

    DisplayRadar(hasValue(LocalPlayer.state.Character:GetData("States"), "GPS"))
    exports['sandbox-hud']:ShiftLocation(hasValue(LocalPlayer.state.Character:GetData("States"), "GPS") or hasValue(LocalPlayer.state.Character:GetData("States"), "PD_WATCH"))
end)

RegisterNetEvent("UI:Client:Reset", function(manual)
	exports['sandbox-hud']:Hide()
	SendNUIMessage({
		type = "UI_RESET",
		data = {
			manual = manual,
		},
	})

	if LocalPlayer.state.Character ~= nil then
		SendNUIMessage({
			type = "SET_CONFIG",
			data = {
				config = LocalPlayer.state.Character:GetData("HUDConfig"),
			},
		})
	end

	exports['sandbox-hud']:ActionHide()
	exports['sandbox-hud']:ListMenuClose()
	exports['sandbox-hud']:InteractionHide()
	exports["sandbox-hud"]:Notification("clear")
	exports['sandbox-hud']:ConfirmClose()
	exports['sandbox-hud']:InputClose()
	exports['sandbox-hud']:InfoOverlayClose()
	exports['sandbox-hud']:MethClose()

	TriggerEvent("UI:Client:ResetFinished", manual)

	if manual then
		Wait(2500)
		exports['sandbox-hud']:Show()
        if exports['sandbox-phone']:IsOpen() or hasValue(LocalPlayer.state.Character:GetData("States"), "GPS") then
			DisplayRadar(true)
		end
	end
end)

RegisterNetEvent("Characters:Client:Logout", function()
	TriggerEvent("UI:Client:Reset")
end)

AddEventHandler("Vehicles:Client:Seatbelt", function(state)
	SendNUIMessage({
		type = "UPDATE_SEATBELT",
		data = { seatbelt = state },
	})
end)

AddEventHandler("Vehicles:Client:Cruise", function(state)
	SendNUIMessage({
		type = "UPDATE_CRUISE",
		data = { cruise = state },
	})
end)

AddEventHandler("Vehicles:Client:Ignition", function(state)
	SendNUIMessage({
		type = "UPDATE_IGNITION",
		data = { ignition = state },
	})
end)

AddEventHandler("Vehicles:Client:Fuel", function(amount, show)
	SendNUIMessage({
		type = "UPDATE_FUEL",
		data = {
			fuel = amount,
			fuelHide = show,
		},
	})
end)

RegisterNetEvent("Status:Client:Update", function(status, value)
	SendNUIMessage({
		type = "UPDATE_STATUS_VALUE",
		data = { name = status, value = value },
	})
end)

RegisterNetEvent("Progress:Client:Progress", function(action, cb)
	exports['sandbox-hud']:Progress(action, cb)
end)

RegisterNetEvent("Progress:Client:ProgressWithStartEvent", function(action, start, finish)
	exports['sandbox-hud']:ProgressWithStartEvent(action, start, finish)
end)

RegisterNetEvent("Progress:Client:ProgressWithTickEvent", function(action, tick, finish)
	exports['sandbox-hud']:ProgressWithTickEvent(action, tick, finish)
end)

RegisterNetEvent("Progress:Client:ProgressWithStartAndTick", function(action, start, tick, finish)
	exports['sandbox-hud']:ProgressWithStartAndTick(action, start, tick, finish)
end)

RegisterNetEvent("Progress:Client:Cancel", function()
	exports['sandbox-hud']:ProgressCancel()
end)

RegisterNetEvent("Progress:Client:Fail", function()
	exports['sandbox-hud']:ProgressFail()
end)

RegisterNUICallback("Progress:Finish", function(data, cb)
	exports['sandbox-hud']:ProgressFinish()
	cb("ok")
end)

AddEventHandler("Targeting:Client:UpdateState", function(isTargeting, hasTarget)
	SendNUIMessage({
		type = (isTargeting and "SHOW_EYE" or "HIDE_EYE"),
		data = {
			icon = (type(hasTarget) == "string" and hasTarget or false),
		},
	})
end)

AddEventHandler("Targeting:Client:OpenMenu", function(menuData)
	SetNuiFocus(true, true)
	SetCursorLocation(0.5, 0.5)
	SendNUIMessage({
		type = "OPEN_MENU",
		data = {
			menu = menuData,
		},
	})
end)

AddEventHandler("Targeting:Client:CloseMenu", function()
	SetNuiFocus(false, false)
	SendNUIMessage({
		type = "CLOSE_MENU",
		data = {},
	})
end)

RegisterNetEvent("UI:Client:Configure", function()
	SetNuiFocus(true, true)
	SendNUIMessage({
		type = "TOGGLE_SETTINGS",
		data = {
			state = true,
		},
	})
end)

RegisterNUICallback("targetingAction", function(data, cb)
	SetNuiFocus(false, false)
	SendNUIMessage({
		type = "CLOSE_MENU",
		data = {},
	})
	TriggerEvent("Targeting:Client:MenuSelect", data and data.event, data and data.data or {})
	cb("ok")
end)

RegisterNUICallback("CloseUI", function(data, cb)
	SetNuiFocus(false, false)
	cb("OK")
end)

RegisterNUICallback("SaveConfig", function(data, cb)
	exports["sandbox-base"]:ServerCallback("HUD:SaveConfig", data, function(s)
		cb(s)
	end)
end)

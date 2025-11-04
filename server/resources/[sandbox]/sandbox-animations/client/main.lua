GLOBAL_VEH = nil

IsInAnimation = false

_isPointing = false
_isCrouched = false

walkStyle = "default"
facialExpression = "default"
emoteBinds = {}

_doingStateAnimation = false

AddEventHandler('onClientResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Wait(1000)
		RegisterKeybinds()

		RegisterChairTargets()

		exports['sandbox-hud']:InteractionRegisterMenu("expressions", "Expressions", "face-grin-squint-tears", function()
			exports['sandbox-hud']:InteractionHide()
			exports['sandbox-animations']:OpenExpressionsMenu()
		end)

		exports['sandbox-hud']:InteractionRegisterMenu("walks", "Walk Styles", "person-walking", function()
			exports['sandbox-hud']:InteractionHide()
			exports['sandbox-animations']:OpenWalksMenu()
		end)

		exports["sandbox-base"]:RegisterClientCallback("Selfie:Client:UploadPhoto", function(data, cb)
			TriggerServerEvent("Animations:Server:UploadSelfie", data, cb)
		end)
	end
end)

local pauseListener = nil
AddEventHandler("Characters:Client:Spawn", function()
	exports['sandbox-animations']:EmotesCancel()
	TriggerEvent("Animations:Client:StandUp", true, true)

	pauseListener = AddStateBagChangeHandler(
		"inPauseMenu",
		string.format("player:%s", GetPlayerServerId(LocalPlayer.state.PlayerID)),
		function(bagName, key, value, _unused, replicated)
			if key == "inPauseMenu" then
				if
					value == 1
					and not LocalPlayer.state.isDead
					and not LocalPlayer.state.isCuffed
					and not LocalPlayer.state.isHardCuffed
				then
					if value == 1 and not exports['sandbox-animations']:EmotesGet() then
						exports['sandbox-animations']:EmotesPlay("map", false, nil, true, true)
					end
				else
					if value == false and exports['sandbox-animations']:EmotesGet() == "map" then
						exports['sandbox-animations']:EmotesForceCancel()
					end
				end
			end
		end
	)

	CreateThread(function()
		while LocalPlayer.state.loggedIn do
			Wait(5000)
			if not _isCrouched and not LocalPlayer.state.drunkMovement then
				exports['sandbox-animations']:PedFeaturesRequestFeaturesUpdate()
			end
		end
	end)

	CreateThread(function()
		while LocalPlayer.state.loggedIn do
			Wait(5)
			DisableControlAction(0, 36, true)
			if IsDisabledControlJustPressed(0, 36) then
				exports['sandbox-animations']:PedFeaturesToggleCrouch()
			end
			if IsInAnimation and IsPedShooting(LocalPlayer.state.ped) then
				exports['sandbox-animations']:EmotesForceCancel()
			end
		end
	end)

	local character = LocalPlayer.state.Character
	if character and character:GetData("Animations") then
		local data = character:GetData("Animations")
		walkStyle, facialExpression, emoteBinds = data.walk, data.expression, data.emoteBinds
		exports['sandbox-animations']:PedFeaturesRequestFeaturesUpdate()
	else
		walkStyle, facialExpression, emoteBinds =
			Config.DefaultSettings.walk, Config.DefaultSettings.expression, Config.DefaultSettings.emoteBinds
		exports['sandbox-animations']:PedFeaturesRequestFeaturesUpdate()
	end
end)

RegisterNetEvent("Characters:Client:Logout", function()
	exports['sandbox-animations']:EmotesForceCancel()
	Wait(20)

	RemoveStateBagChangeHandler(pauseListener)
	if LocalPlayer.state.anim then
		LocalPlayer.state:set("anim", false, true)
	end
end)

RegisterNetEvent("Vehicles:Client:EnterVehicle", function(veh)
	GLOBAL_VEH = veh
end)

RegisterNetEvent("Vehicles:Client:ExitVehicle", function()
	GLOBAL_VEH = nil
end)

function RegisterKeybinds()
	exports["sandbox-kbs"]:Add("pointing", "b", "keyboard", "Pointing - Toggle", function()
		if _isPointing then
			StopPointing()
		else
			StartPointing()
		end
	end)

	exports["sandbox-kbs"]:Add("ragdoll", Config.RagdollKeybind, "keyboard", "Ragdoll - Toggle", function()
		local time = 3500
		Wait(350)
		ClearPedSecondaryTask(LocalPlayer.state.ped)
		SetPedToRagdoll(LocalPlayer.state.ped, time, time, 0, 0, 0, 0)
	end)

	exports["sandbox-kbs"]:Add("emote_cancel", "x", "keyboard", "Emotes - Cancel Current", function()
		exports['sandbox-animations']:EmotesCancel()

		TriggerEvent("Animations:Client:StandUp")
		TriggerEvent("Animations:Client:Selfie", false)
		TriggerEvent("Animations:Client:UsingCamera", false)
	end)

	-- Don't specify and key so then players can set it themselves if they want to use...
	exports["sandbox-kbs"]:Add("emote_menu", "", "keyboard", "Emotes - Open Menu", function()
		exports['sandbox-animations']:OpenMainEmoteMenu()
	end)

	-- There are 4 emote binds and by default they use numbers 6, 7, 8 and 9
	for bindNum = 1, 4 do
		exports["sandbox-kbs"]:Add(
			"emote_bind_" .. bindNum,
			tostring(5 + bindNum),
			"keyboard",
			"Emotes - Bind #" .. bindNum,
			function()
				exports['sandbox-animations']:EmoteBindsUse(bindNum)
			end
		)
	end
end

RegisterNetEvent("Animations:Client:OpenMainEmoteMenu")
AddEventHandler("Animations:Client:OpenMainEmoteMenu", function()
	exports['sandbox-animations']:OpenMainEmoteMenu()
end)

RegisterNetEvent("Animations:Client:OpenWalksMenu")
AddEventHandler("Animations:Client:OpenWalksMenu", function()
	exports['sandbox-animations']:OpenWalksMenu()
end)

RegisterNetEvent("Animations:Client:OpenExpressionsMenu")
AddEventHandler("Animations:Client:OpenExpressionsMenu", function()
	exports['sandbox-animations']:OpenExpressionsMenu()
end)

AddEventHandler('onClientResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Wait(1000)
		exports['sandbox-hud']:InteractionRegisterMenu("prison", false, "siren-on", function(data)
			exports['sandbox-hud']:InteractionShowMenu({
				{
					icon = "siren-on",
					label = "13-A",
					action = function()
						exports['sandbox-hud']:InteractionHide()
						TriggerServerEvent("Police:Server:Panic", true)
					end,
					shouldShow = function()
						return LocalPlayer.state.isDead
					end,
				},
				{
					icon = "siren",
					label = "13-B",
					action = function()
						exports['sandbox-hud']:InteractionHide()
						TriggerServerEvent("Police:Server:Panic", false)
					end,
					shouldShow = function()
						return LocalPlayer.state.isDead
					end,
				},
			})
		end, function()
			return LocalPlayer.state.onDuty == "prison" and LocalPlayer.state.isDead
		end)

		exports.ox_target:addBoxZone({
			id = "prison-lockdown-1",
			coords = vector3(1771.76, 2491.75, 49.67),
			size = vector3(4.8, 0.8, 2.0),
			rotation = 30,
			debug = false,
			minZ = 49.07,
			maxZ = 50.07,
			options = {
				{
					icon = "lock",
					label = "Enable Lockdown",
					event = "Prison:Client:SetLockdown",
					onSelect = function()
						TriggerEvent("Prison:Client:SetLockdown", { state = true })
					end,
					canInteract = function()
						return not GlobalState["PrisonLockdown"]
							and (LocalPlayer.state.onDuty == "police" or LocalPlayer.state.onDuty == "prison")
					end,
				},
				{
					icon = "lock-open",
					label = "Disable Lockdown",
					event = "Prison:Client:SetLockdown",
					onSelect = function()
						TriggerEvent("Prison:Client:SetLockdown", { state = false })
					end,
					canInteract = function()
						return GlobalState["PrisonLockdown"]
							and (LocalPlayer.state.onDuty == "police" or LocalPlayer.state.onDuty == "prison")
					end,
				},
			}
		})

		exports.ox_target:addBoxZone({
			id = "prison-lockdown-2",
			coords = vector3(1773.06, 2571.9, 45.73),
			size = vector3(0.6, 0.4, 2.0),
			rotation = 0,
			debug = false,
			minZ = 45.93,
			maxZ = 46.93,
			options = {
				{
					icon = "lock",
					label = "Enable Lockdown",
					event = "Prison:Client:SetLockdown",
					onSelect = function()
						TriggerEvent("Prison:Client:SetLockdown", { state = true })
					end,
					canInteract = function()
						return not GlobalState["PrisonLockdown"]
							and (LocalPlayer.state.onDuty == "police" or LocalPlayer.state.onDuty == "prison")
					end,
				},
				{
					icon = "lock-open",
					label = "Disable Lockdown",
					event = "Prison:Client:SetLockdown",
					onSelect = function()
						TriggerEvent("Prison:Client:SetLockdown", { state = false })
					end,
					canInteract = function()
						return GlobalState["PrisonLockdown"]
							and (LocalPlayer.state.onDuty == "police" or LocalPlayer.state.onDuty == "prison")
					end,
				},
			}
		})

		exports.ox_target:addBoxZone({
			id = "prison-doors-lockup",
			coords = vector3(1774.88, 2492.29, 49.67),
			size = vector3(2.2, 0.4, 2.0),
			rotation = 30,
			debug = false,
			minZ = 49.77,
			maxZ = 50.97,
			options = {
				{
					icon = "lock",
					label = "Lock Cell Doors",
					event = "Prison:Client:SetCellState",
					onSelect = function()
						TriggerEvent("Prison:Client:SetCellState", { state = true })
					end,
					canInteract = function()
						return not GlobalState["PrisonCellsLocked"]
							and not GlobalState["PrisonLockdown"]
							and (LocalPlayer.state.onDuty == "police" or LocalPlayer.state.onDuty == "prison")
					end,
				},
				{
					icon = "lock-open",
					label = "Unlock Cell Doors",
					event = "Prison:Client:SetCellState",
					onSelect = function()
						TriggerEvent("Prison:Client:SetCellState", { state = false })
					end,
					canInteract = function()
						return GlobalState["PrisonCellsLocked"]
							and (LocalPlayer.state.onDuty == "police" or LocalPlayer.state.onDuty == "prison")
					end,
				},
			}
		})

		exports['sandbox-hud']:InteractionRegisterMenu("prison-utils", "Corrections Utilities", "tablet-rugged",
			function(data)
				exports['sandbox-hud']:InteractionShowMenu({
					{
						icon = "lock-open",
						label = "Slimjim Vehicle",
						action = function()
							exports['sandbox-hud']:InteractionHide()
							TriggerServerEvent("Police:Server:Slimjim")
						end,
						shouldShow = function()
							local target = lib.getClosestVehicle(GetEntityCoords(cache.ped), 2.0, false)

							if not target or not DoesEntityExist(target) then
								return false
							end

							return IsEntityAVehicle(target)
						end,
					},
					{
						icon = "tablet-screen-button",
						label = "MDT",
						action = function()
							exports['sandbox-hud']:InteractionHide()
							TriggerEvent("MDT:Client:Toggle")
						end,
						shouldShow = function()
							return LocalPlayer.state.onDuty == "prison"
						end,
					},
					{
						icon = "video",
						label = "Toggle Body Cam",
						action = function()
							exports['sandbox-hud']:InteractionHide()
							TriggerEvent("MDT:Client:ToggleBodyCam")
						end,
						shouldShow = function()
							return LocalPlayer.state.onDuty == "prison"
						end,
					},
				})
			end, function()
				return LocalPlayer.state.onDuty == "prison"
			end)

		exports.ox_target:addBoxZone({
			id = "prison-clockinoff-1",
			coords = vector3(1838.94, 2578.14, 46.01),
			size = vector3(2.0, 0.8, 2.0),
			rotation = 305,
			debug = false,
			minZ = 45.81,
			maxZ = 46.61,
			options = {
				{
					icon = "fas fa-clipboard-check",
					label = "Go On Duty",
					event = "Corrections:Client:OnDuty",
					groups = { "prison" },
					reqOffDuty = true,
				},
				{
					icon = "fas fa-clipboard",
					label = "Go Off Duty",
					event = "Corrections:Client:OffDuty",
					groups = { "prison" },
					reqDuty = true,
				},
				{
					icon = "fas fa-clipboard-check",
					label = "Go On Duty (Medical)",
					event = "EMS:Client:OnDuty",
					groups = { "ems" },
					reqOffDuty = true,
				},
				{
					icon = "fas fa-clipboard",
					label = "Go Off Duty (Medical)",
					event = "EMS:Client:OffDuty",
					groups = { "ems" },
					reqDuty = true,
				},
			}
		})

		exports.ox_target:addBoxZone({
			id = "prison-clockinoff-2",
			coords = vector3(1773.99, 2493.69, 49.67),
			size = vector3(0.6, 0.4, 2.0),
			rotation = 30,
			debug = false,
			minZ = 50.02,
			maxZ = 50.62,
			options = {
				{
					icon = "fas fa-clipboard-check",
					label = "Go On Duty",
					event = "Corrections:Client:OnDuty",
					groups = { "prison" },
					reqOffDuty = true,
				},
				{
					icon = "fas fa-clipboard",
					label = "Go Off Duty",
					event = "Corrections:Client:OffDuty",
					groups = { "prison" },
					reqDuty = true,
				},
				{
					icon = "fas fa-clipboard-check",
					label = "Go On Duty (Medical)",
					event = "EMS:Client:OnDuty",
					groups = { "ems" },
					reqOffDuty = true,
				},
				{
					icon = "fas fa-clipboard",
					label = "Go Off Duty (Medical)",
					event = "EMS:Client:OffDuty",
					groups = { "ems" },
					reqDuty = true,
				},
			}
		})

		exports.ox_target:addBoxZone({
			id = "prison-clockinoff-3",
			coords = vector3(1768.84, 2573.73, 45.73),
			size = vector3(1.4, 0.6, 2.0),
			rotation = 0,
			debug = false,
			minZ = 45.13,
			maxZ = 46.13,
			options = {
				{
					icon = "fas fa-clipboard-check",
					label = "Go On Duty",
					event = "Corrections:Client:OnDuty",
					groups = { "prison" },
					reqOffDuty = true,
				},
				{
					icon = "fas fa-clipboard",
					label = "Go Off Duty",
					event = "Corrections:Client:OffDuty",
					groups = { "prison" },
					reqDuty = true,
				},
				{
					icon = "fas fa-clipboard-check",
					label = "Go On Duty (Medical)",
					event = "EMS:Client:OnDuty",
					groups = { "ems" },
					reqOffDuty = true,
				},
				{
					icon = "fas fa-clipboard",
					label = "Go Off Duty (Medical)",
					event = "EMS:Client:OffDuty",
					groups = { "ems" },
					reqDuty = true,
				},
			}
		})

		local locker = {
			{
				icon = "fas fa-user-lock",
				label = "Open Personal Locker",
				event = "Police:Client:OpenLocker",
				groups = { "prison", "ems" },
				reqDuty = true,
			},
		}

		exports.ox_target:addBoxZone({
			id = "prison-shitty-locker",
			coords = vector3(1833.2, 2574.06, 46.01),
			size = vector3(5.4, 0.4, 2.0),
			rotation = 0,
			debug = false,
			minZ = 45.01,
			maxZ = 47.01,
			options = locker
		})
	end
end)

_PROGRESS_LOCKDOWN = false

AddEventHandler("Prison:Client:SetLockdown", function(entity, data)
	if not _PROGRESS_LOCKDOWN then
		_PROGRESS_LOCKDOWN = true
		exports["sandbox-base"]:ServerCallback("Prison:SetLockdown", data.state, function(success, state)
			if success then
				if state then
					exports["sandbox-hud"]:Notification("success", "Lockdown Initiated")
					TriggerServerEvent("Prison:Server:Lockdown:AlertPolice", state)
				else
					exports["sandbox-hud"]:Notification("success", "Lockdown Disabled")
					TriggerServerEvent("Prison:Server:Lockdown:AlertPolice", state)
				end

				SetTimeout(5000, function()
					_PROGRESS_LOCKDOWN = false
				end)
			else
				exports["sandbox-hud"]:Notification("success", "Unauthorized!")
			end
		end)
	end
end)

_PROGRESS_DOORS = false

AddEventHandler("Prison:Client:SetCellState", function(entity, data)
	if not _PROGRESS_DOORS then
		_PROGRESS_DOORS = true
		exports["sandbox-base"]:ServerCallback("Prison:SetCellState", data.state, function(success, state)
			if success then
				if state then
					exports["sandbox-hud"]:Notification("success", "Cell Doors Locked")
				else
					exports["sandbox-hud"]:Notification("success", "Cell Doors Unlocked")
				end

				-- TriggerEvent("Prison:Client:JailAlarm", data.state)
				SetTimeout(5000, function()
					_PROGRESS_DOORS = false
				end)
			else
				exports["sandbox-hud"]:Notification("success", "Unauthorized!")
			end
		end)
	end
end)

RegisterNetEvent("Prison:Client:JailAlarm")
AddEventHandler("Prison:Client:JailAlarm", function(toggle)
	if toggle then
		local alarmIpl = GetInteriorAtCoordsWithType(1787.004, 2593.1984, 45.7978, "int_prison_main")

		RefreshInterior(alarmIpl)
		EnableInteriorProp(alarmIpl, "prison_alarm")

		CreateThread(function()
			while not PrepareAlarm("PRISON_ALARMS") do
				Wait(100)
			end
			StartAlarm("PRISON_ALARMS", true)
		end)
	else
		local alarmIpl = GetInteriorAtCoordsWithType(1787.004, 2593.1984, 45.7978, "int_prison_main")

		RefreshInterior(alarmIpl)
		DisableInteriorProp(alarmIpl, "prison_alarm")

		CreateThread(function()
			while not PrepareAlarm("PRISON_ALARMS") do
				Wait(100)
			end
			StopAllAlarms(true)
		end)
	end
end)

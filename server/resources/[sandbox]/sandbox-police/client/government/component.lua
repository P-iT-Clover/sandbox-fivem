local govDutyPoints = {
	{
		center = vector3(-587.98, -206.59, 38.23),
		length = 0.8,
		width = 0.8,
		options = {
			heading = 30,
			--debugPoly=true,
			minZ = 37.23,
			maxZ = 38.83,
		},
	},
}

AddEventHandler('onClientResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Wait(1000)
		local govServices = {
			{
				icon = "fas fa-id-card",
				text = "Purchase ID ($500)",
				event = "Government:Client:BuyID",
			},
			{
				icon = "fas fa-id-badge",
				text = "License Services",
				event = "Government:Client:BuyLicense",
			},
			{
				icon = "fas fa-gavel",
				text = "Public Records",
				event = "Government:Client:AccessPublicRecords",
			},
			{
				icon = "fas fa-clipboard-check",
				text = "Go On Duty",
				event = "Government:Client:OnDuty",
				groups = { "government" },
				reqOffDuty = true,
			},
			{
				icon = "fas fa-clipboard",
				text = "Go Off Duty",
				event = "Government:Client:OffDuty",
				groups = { "government" },
				reqDuty = true,
			},
			{
				icon = "fas fa-shop-lock",
				text = "DOJ Shop",
				event = "Government:Client:DOJShop",
				groups = { "government" },
				workplace = "doj",
				reqDuty = true,
			},
		}

		exports['sandbox-pedinteraction']:Add(
			"govt-services",
			`a_f_m_eastsa_02`,
			vector3(-552.412, -202.760, 37.239),
			337.363,
			25.0,
			govServices,
			"bell-concierge"
		)
		-- exports.ox_target:addBoxZone({
		--     id = "govt-services",
		--     coords = vector3(-555.92, -186.01, 38.22),
		--     size = vector3(2.0, 2.0, 2.0),
		--     rotation = 28,
		--     debug = false,
		--     minZ = 37.22,
		--     maxZ = 39.62,
		--     options = govServices
		-- })

		for k, v in ipairs(govDutyPoints) do
			exports.ox_target:addBoxZone({
				id = "gov-info-" .. k,
				coords = v.center,
				size = vector3(v.length, v.width, 2.0),
				rotation = v.options.heading,
				debug = false,
				minZ = v.options.minZ,
				maxZ = v.options.maxZ,
				options = {
					{
						icon = "fas fa-clipboard-check",
						label = "Go On Duty",
						event = "Government:Client:OnDuty",
						groups = { "government" },
						reqDuty = false,
					},
					{
						icon = "fas fa-clipboard",
						label = "Go Off Duty",
						event = "Government:Client:OffDuty",
						groups = { "government" },
						reqDuty = true,
					},
					{
						icon = "fas fa-gavel",
						label = "Public Records",
						event = "Government:Client:AccessPublicRecords",
					},
				}
			})
		end

		exports['sandbox-polyzone']:CreateBox("courtroom", vector3(-571.17, -207.02, 38.77), 18.2, 19.6, {
			heading = 30,
			--debugPoly=true,
			minZ = 36.97,
			maxZ = 47.37,
		}, {})

		exports.ox_target:addBoxZone({
			id = "court-gavel",
			coords = vector3(-575.8, -210.3, 38.77),
			size = vector3(0.8, 0.8, 2.0),
			rotation = 30,
			debug = false,
			minZ = 37.77,
			maxZ = 39.37,
			options = {
				{
					icon = "fas fa-gavel",
					label = "Use Gavel",
					event = "Government:Client:UseGavel",
					-- groups = { "government" },
					-- reqDuty = true,
				},
			}
		})
	end
end)

RegisterNetEvent("Characters:Client:Spawn", function()
	exports["sandbox-blips"]:Add("courthouse", "Courthouse", vector3(-538.916, -214.852, 37.650), 419, 0, 0.9)
end)

AddEventHandler("Government:Client:UseGavel", function()
	TriggerServerEvent("Government:Server:Gavel")
end)

RegisterNetEvent("Government:Client:Gavel", function()
	if not LocalPlayer.state.loggedIn then
		return
	end
	local coords = GetEntityCoords(LocalPlayer.state.ped)
	if exports['sandbox-polyzone']:IsCoordsInZone(coords, "courtroom") then
		exports["sandbox-sounds"]:PlayOne("gavel.ogg", 0.6)
	end
end)

AddEventHandler("Government:Client:DOJShop", function()
	exports.ox_inventory:ShopOpen("doj-shop")
end)

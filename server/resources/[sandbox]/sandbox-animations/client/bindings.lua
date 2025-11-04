exports("EmoteBindsUpdate", function(newBinds)
	exports["sandbox-base"]:ServerCallback("Animations:UpdateEmoteBinds", newBinds, function(success, data)
		if success then
			emoteBinds = data
			exports["sandbox-hud"]:Notification("success", "Successfully Updated and Saved Keybinds", 5000)
		end
	end)
end)

exports("EmoteBindsUse", function(bindId)
	local bindEmote = emoteBinds[tostring(bindId)]
	if bindEmote and type(bindEmote) == "string" then
		exports['sandbox-animations']:EmotesPlay(bindEmote, true)
	end
end)

RegisterNetEvent("Animations:Client:OpenEmoteBinds", function()
	local bindInputs = {}
	for bindNum = 1, 4 do
		table.insert(bindInputs, {
			id = "bind-" .. bindNum,
			type = "text",
			options = {
				inputProps = {
					maxLength = 64,
				},
				label = string.format(
					"Emote Bind #%s - Currently Assigned to %s",
					bindNum,
					exports["sandbox-kbs"]:GetKey("emote_bind_" .. bindNum)
				),
				defaultValue = emoteBinds[tostring(bindNum)] or "",
			},
		})
	end

	exports['sandbox-hud']:InputShow("Emote Binds", "Input Label", bindInputs, "Animations:Client:SaveEmoteBinds", {})
end)

AddEventHandler("Animations:Client:SaveEmoteBinds", function(values)
	local updatedBinds = {}

	for bindNum = 1, 4 do
		local newValue = values["bind-" .. bindNum]
		if newValue then
			updatedBinds[tostring(bindNum)] = newValue
		end
	end

	exports['sandbox-animations']:EmoteBindsUpdate(updatedBinds)
end)

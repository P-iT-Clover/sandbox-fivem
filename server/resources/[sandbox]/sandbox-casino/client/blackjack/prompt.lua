local showingListMenuPrompt = nil
local currentlyShowing = nil

function StartListMenuPrompt(menu, timeout)
    if showingListMenuPrompt then
        exports['sandbox-hud']:ListMenuClose()
        showingListMenuPrompt:resolve({ success = false, timeout = false, data = {} })
        showingListMenuPrompt = nil
    end

    showingListMenuPrompt = promise.new()
    currentlyShowing = GetGameTimer()

    exports['sandbox-hud']:ListMenuShow(menu)

    if timeout then
        local showingAtTime = GetGameTimer()
        SetTimeout(timeout, function()
            if showingListMenuPrompt and currentlyShowing == showingAtTime then
                exports['sandbox-hud']:ListMenuClose()
                showingListMenuPrompt:resolve({ success = false, timeout = true, data = {} })
                showingListMenuPrompt = nil
            end
        end)
    end

    return Citizen.Await(showingListMenuPrompt)
end

AddEventHandler("Casino:Client:RecievePromptData", function(data)
    if showingListMenuPrompt then
        showingListMenuPrompt:resolve({
            success = true,
            data = data or {}
        })
        showingListMenuPrompt = nil
    end
end)

AddEventHandler("ListMenu:Close", function()
    if showingListMenuPrompt then
        showingListMenuPrompt:resolve({ success = false, data = {} })
        showingListMenuPrompt = nil
    end
end)

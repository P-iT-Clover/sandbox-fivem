local utils = require 'client.utils'

---@diagnostic disable-next-line: duplicate-set-field
function utils.hasPlayerGotGroup(filter, reqDuty, reqOffDuty, workplace, permissionKey, tempjob, rep)
    local function checkJob(jobName)
        if type(jobName) ~= "string" then
            return false
        end

        local jobInfo = exports['sandbox-jobs']:HasJob(jobName)

        if not jobInfo then
            return false
        end

        if workplace ~= nil then
            local hasWorkplace = jobInfo.Workplace and jobInfo.Workplace.Id == workplace
            if not hasWorkplace then
                return false
            end
        end

        if reqDuty ~= nil or reqOffDuty ~= nil then
            local isOnDuty = exports['sandbox-jobs']:DutyGet(jobName)

            if reqDuty ~= nil then
                if reqDuty and not isOnDuty then
                    return false
                elseif not reqDuty and isOnDuty then
                    return false
                end
            end

            if reqOffDuty ~= nil then
                if reqOffDuty and isOnDuty then
                    return false
                elseif not reqOffDuty and not isOnDuty then
                    return false
                end
            end
        end

        if permissionKey ~= nil then
            local hasPermission = exports['sandbox-jobs']:HasPermissionInJob(jobName, permissionKey)
            if not hasPermission then
                return false
            end
        end

        if tempjob ~= nil then
            local playerTempJob = LocalPlayer.state.Character:GetData("TempJob")
            local hasTempJob = playerTempJob == tempjob
            if not hasTempJob then
                return false
            end
        end

        if rep ~= nil then
            local hasRep = exports['sandbox-characters']:RepGetLevel(rep.id) >= rep.level
            if not hasRep then
                return false
            end
        end

        return true
    end

    local filterType = type(filter)

    -- This is for when filter is nil and option(s) are not nil
    if filter == nil and tempjob ~= nil then
        local playerTempJob = LocalPlayer.state.Character:GetData("TempJob")
        local hasTempJob = playerTempJob == tempjob
        return hasTempJob
    end

    if filter == nil and permissionKey ~= nil then
        local hasPermission = exports['sandbox-jobs']:HasPermission(permissionKey)
        return hasPermission
    end

    if filter == nil and rep ~= nil then
        local hasRep = exports['sandbox-characters']:RepGetLevel(rep.id) >= rep.level
        return hasRep
    end

    if filterType == "string" then
        return checkJob(filter)
    elseif filterType == "table" then
        local tableType = table.type(filter)

        if tableType == "array" or #filter > 0 then
            for i, jobEntry in ipairs(filter) do
                local jobName = jobEntry

                if type(jobEntry) == "table" then
                    jobName = jobEntry.job or jobEntry.name
                    if not jobName then
                        for k, v in pairs(jobEntry) do
                            jobName = v
                            break
                        end
                    end
                end

                if jobName and checkJob(jobName) then
                    return true
                end
            end
            return false
        elseif tableType == "hash" then
            for jobName, grade in pairs(filter) do
                if type(jobName) == "string" then
                    local jobInfo = exports['sandbox-jobs']:HasJob(jobName)
                    if jobInfo then
                        local playerGrade = jobInfo.Grade and jobInfo.Grade.Level or 0
                        if playerGrade >= grade then
                            if workplace ~= nil then
                                local hasWorkplace = jobInfo.Workplace and jobInfo.Workplace.Id == workplace
                                if not hasWorkplace then
                                    goto continue
                                end
                            end

                            if reqDuty ~= nil or reqOffDuty ~= nil then
                                local isOnDuty = exports['sandbox-jobs']:DutyGet(jobName)

                                if reqDuty ~= nil then
                                    if reqDuty and not isOnDuty then
                                        goto continue
                                    elseif not reqDuty and isOnDuty then
                                        goto continue
                                    end
                                end

                                if reqOffDuty ~= nil then
                                    if reqOffDuty and isOnDuty then
                                        goto continue
                                    elseif not reqOffDuty and not isOnDuty then
                                        goto continue
                                    end
                                end
                            end

                            if permissionKey ~= nil then
                                local hasPermission = exports['sandbox-jobs']:HasPermissionInJob(jobName, permissionKey)
                                if not hasPermission then
                                    goto continue
                                end
                            end

                            if tempjob ~= nil then
                                local hasTempJob = LocalPlayer.state.Character:GetData("TempJob") == tempjob
                                if not hasTempJob then
                                    goto continue
                                end
                            end

                            if rep ~= nil then
                                local hasRep = exports['sandbox-characters']:RepGetLevel(rep.id) >= rep.level
                                if not hasRep then
                                    goto continue
                                end
                            end

                            return true
                        end
                    end
                end
                ::continue::
            end
            return false
        else
            local jobName = filter.job or filter.name
            if type(jobName) == "string" then
                return checkJob(jobName)
            end
            return false
        end
    end

    return false
end

---@diagnostic disable-next-line: duplicate-set-field
function utils.hasPlayerGotItems(data)
    if type(data) == "string" then
        return exports.ox_inventory:ItemsHas(data, 1)
    elseif type(data) == "table" then
        if data.item then
            return exports.ox_inventory:ItemsHas(data.item, data.itemCount or 1)
        end

        for k, v in pairs(data) do
            if type(v) == "number" then
                if not exports.ox_inventory:ItemsHas(k, v) then
                    return false
                end
            else
                if not exports.ox_inventory:ItemsHas(v, 1) then
                    return false
                end
            end
        end

        return true
    end

    return false
end
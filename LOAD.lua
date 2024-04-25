local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if not MagnetDoughtDF and
        not EnabledAttackSeaB and
        not SeaEventsEnabled then
            return old(unpack(args))
        end
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.AutoFarm and MagnetDoughtDF then
                        if PosMonDoughtOpenDoorDF ~= nil then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosMonDoughtOpenDoorDF
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosMonDoughtOpenDoorDF.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if _G.AutoFarm and EnabledAttackSeaB then
                        if PosSeaB ~= nil then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosSeaB
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosSeaB.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if _G.AutoFarm and SeaEventsEnabled then
                        if SeaEventsPos ~= nil then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = SeaEventsPos
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = SeaEventsPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                   
                end
            end
        elseif tostring(method) == "InvokeServer" then
            if tostring(args[1]) == "" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.AutoFarm and MagnetDoughtDF then
                        if PosMonDoughtOpenDoorDF ~= nil then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = PosMonDoughtOpenDoorDF
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = PosMonDoughtOpenDoorDF.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if _G.AutoFarm and EnabledAttackSeaB then
                        if PosSeaB ~= nil then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = PosSeaB
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = PosSeaB.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if _G.AutoFarm and SeaEventsEnabled then
                        if SeaEventsPos ~= nil then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = SeaEventsPos
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = SeaEventsPos.Position
                            end
                            return old(unpack(args))
                        end
                    end              
                end
            end
        end 
        return old(...)
    end)
end)
pcall(function ()
    task.spawn(function()
        wait(30)
        getgenv().Hermanos_Settings = {
            ['key'] = 'a6c027df-b06b-468b-bd91-19c214b9562e',
            ['PC'] = 'MARU'
            }
        task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/script.lua'))() end)
    end)
end)
task.spawn(function()
    while true do wait()
        pcall(function()
            if not game:GetService("CoreGui").NINONOOB.Main.Top.NameHub.Text:find("Maru") then
                while true do end
            end
        end)
    end
end)

task.spawn(function() 
	local old 
	old = hookmetamethod(game, "__namecall", function(self, ...)
		local args = {...}
		if getnamecallmethod() == "FireServer" and tostring(self) == "RE/ShootGunEvent" and (_G.StartAttack and _G.TargetPos ~= nil) then 
			pcall(function()
				args[1] = _G.TargetPos.Position
                args[2] = {
                    _G.TargetPos
                }
				return old(self, unpack(args))
			end)
		end
		return old(self, ...) 
	end)
end)
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
task.spawn(function()
    while true do wait()
        pcall(function()
            if not game:GetService("CoreGui").NINONOOB.Main.Top.NameHub.Text:find("Maru") then
                while true do end
            end
        end)
    end
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/APIGET/main/GET.lua"))()

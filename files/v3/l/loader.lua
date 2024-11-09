--[[
You maybe need to run this on loadstring...
or else it will kick you.
licensed by k4sii

#NegativeSS




#4:45 AM 09/11/2024.




]]
local b = "8Gb471nh37Ghg9821-cache"
local c = "https://raw.githubusercontent.com/NewbieScripter-web/k4sii.github.io/refs/heads/main/files/v3/l/" .. b .. ".lua"


if not is_from_loader then
    local player = game.Players.LocalPlayer
    if player then
        player:Kick("You must use the loader to run this script.")
    end
    return
end


local success, script = pcall(function()
    return game:HttpGet(c)
end)

if success then
 
    local loadSuccess, loadError = pcall(loadstring(script))
    if not loadSuccess then
        local player = game.Players.LocalPlayer
        if player then
            player:Kick("Failed to execute the script: " .. loadError)
        end
    end
else
    local player = game.Players.LocalPlayer
    if player then
        player:Kick("Failed to load the script.")
    end
end

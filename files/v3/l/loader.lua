--[[
#K4siiontop
You maybe need to run this on loadstring...
or else it will kick you.
licensed by k4sii

#NegativeSS




#4:45 AM 09/11/2024.




]]
local a = "This script is from K4-Hub."
local b = "8Gb471nh37Ghg9821"

-- Cargar script si se encuentra lrm_load_script
if lrm_load_script then
    lrm_load_script(b)
    while wait(1) do end
end


local c = "https://raw.githubusercontent.com/NewbieScripter-web/k4sii.github.io/refs/heads/main/files/v3/l/" .. b .. ".lua"


is_from_loader = {Mode = "fastload"}
local d = 0.03

-- Función de carga rápida
l_fastload_enabled = function(e)
    if e == "flush" then
        wait(d)
        d = d + 2
        local f, g
        local h, i = pcall(function()
            g = game:HttpGet(c)
            pcall(writefile, b .. "-cache.lua", "-- " .. a .. "\n\n if not is_from_loader then warn('Use the loadstring. Do not run directly') return end;\n " .. g)
            wait(0.1)
            f = loadstring(g)
        end)
        
        if not h or not f then
            pcall(writefile, "K4H-err-loader-log-httpresp.txt", tostring(g))
            warn("Error while loading. Err: " .. tostring(i) .. " Check K4H-err-loader-log-httpresp.txt for more details.")
            return
        end
        
        f(is_from_loader)
    end
    
    if e == "rl" then
        pcall(writefile, b .. "-cache.lua", "recache required")
        wait(0.2)
        pcall(delfile, b .. "-cache.lua")
    end
end


local j
local k, l = pcall(function()
    j = readfile(b .. "-cache.lua")
    if (not j) or (#j < 5) then
        j = nil
        return
    end
    j = loadstring(j)
end)

if not k or not j then
    l_fastload_enabled("flush")
    return
end


j(is_from_loader)

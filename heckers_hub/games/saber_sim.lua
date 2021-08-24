if game.PlaceId==3823781113 then
    local library = loadstring(game:HttpGet(('https://hecker-cheats.github.io/heckers_hub/ui.lua')))()
    local a = false
    local w = library:CreateWindow("Hecker's Cheats")
    local iuyfasd = w:CreateFolder("hecker-cheats.github.io")
    local b = w:CreateFolder("Misc")
    local x = w:CreateFolder("UI Settings")
    b:Toggle("Auto Sword",function(bool)
        shared.toggle = bool
        a = bool
    end)
    x:DestroyGUI()
    x:GuiSettings()
    while true do
        wait(0.001)
        if a==true then
            game.ReplicatedStorage.Events.Clicked:FireServer()
        end
    end
end

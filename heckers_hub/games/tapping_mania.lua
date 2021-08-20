if game.PlaceId==5535087806 then
local library = loadstring(game:HttpGet(('https://hecker-cheats.github.io/heckers_hub/ui.lua')))()
local a = false
local h = false
local w = library:CreateWindow("Hecker's Cheats")
local iuyfasd = w:CreateFolder("hecker-cheats.github.io")
local b = w:CreateFolder("Misc")
local x = w:CreateFolder("UI Settings")
b:Toggle("Auto Tap",function(bool)
shared.toggle = bool
a = bool
end)
b:Toggle("Auto Rebirth",function(bool)
shared.toggle = bool
h = bool
end)
x:DestroyGUI()
x:GuiSettings()
while true do
wait()
if a==true then
game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()
end
if h==true then
local args = { [1] = 1 }
game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
end
end

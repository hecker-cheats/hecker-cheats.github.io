    if game.PlaceId==155615604 then
    local a = false
    game:GetService('RunService').Stepped:Connect(function()
    if a then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end)
    local library = loadstring(game:HttpGet(('https://hecker-cheats.github.io/heckers_hub/ui.lua')))()
    local h = false
    local w = library:CreateWindow("Hecker's Cheats")
    local iuyfasd = w:CreateFolder("hecker-cheats.github.io")
    local b = w:CreateFolder("Misc")
    local g = w:CreateFolder("Team")
    local n = w:CreateFolder("Teleports")
    local x = w:CreateFolder("UI Settings")
    b:Toggle("Noclip",function(bool)
    shared.toggle = bool
    a = bool
    end)
    b:Toggle("Kill Aura",function(bool)
    shared.toggle = bool
    h = bool
    end)
    b:Button("Give Guns",function()
    for i,v in pairs(game.Workspace.Prison_ITEMS.giver:GetChildren()) do
    game.Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
    end
    end)
    b:Button("Arrest Crims",function()
    local Player = game.Players.LocalPlayer
    local cpos = Player.Character.HumanoidRootPart.CFrame
    for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
    if v.Name ~= Player.Name then
    local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
    end
    end
    Player.Character.HumanoidRootPart.CFrame = cpos
    end)
    b:Button("SuperPunch",function()
    local mainRemotes = game.ReplicatedStorage
    local meleeRemote = mainRemotes['meleeEvent']
    local mouse = game.Players.LocalPlayer:GetMouse()
    local punching = false
    local cooldown = false
    mouse.KeyDown:connect(function(key)
    if cooldown == false then
    if key:lower() == "f" then
    cooldown = true
    local part = Instance.new("Part", game.Players.LocalPlayer.Character)
    part.Transparency = 1
    part.Size = Vector3.new(5, 2, 3)
    part.CanCollide = false
    local w1 = Instance.new("Weld", part)
    w1.Part0 = game.Players.LocalPlayer.Character.Torso
    w1.Part1 = part
    w1.C1 = CFrame.new(0,0,2)
    part.Touched:connect(function(hit)
    if game.Players:FindFirstChild(hit.Parent.Name) then
    local plr = game.Players:FindFirstChild(hit.Parent.Name) 
    if plr.Name ~= game.Players.LocalPlayer.Name then
    part:Destroy() 
    for i = 1,100 do
    meleeRemote:FireServer(plr)
    end
    end
    end
    end)
    wait(1)
    cooldown = false
    part:Destroy()
    end
    end
    end)
    end)
    g:Button("Team Neutral",function()
    workspace.Remote.TeamEvent:FireServer("Medium stone grey")
    end)
    g:Button("Team Police",function()
    workspace.Remote.TeamEvent:FireServer("Bright blue")
    end)
    g:Button("Team Inmate",function()
    workspace.Remote.TeamEvent:FireServer("Bright orange")
    end)
    n:Button("TP To: Yard",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.87,98,2458.93)
    end)
    n:Button("TP To: Crim Base",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.46,94.13,2063.63)
    end)
    n:Button("TP To: Prison",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
    end)
    x:DestroyGUI()
    x:GuiSettings()
    while true do
    wait(0.1)
    if h==true then
    for i, plr in pairs(game.Players:GetChildren()) do
    if plr.Name ~= game.Players.LocalPlayer.Name then
    for i = 1, 10 do
    game.ReplicatedStorage.meleeEvent:FireServer(plr)
    end
    end
    end
    end
    if a==true then
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end       
    end
    end
    

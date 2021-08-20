if game.PlaceId == 5535087806 then
  print('tapping mania detected.')
  if identifyexecutor then
    _G.exploit = identifyexecutor();
  end;
  game:GetService("StarterGui"):SetCore("SendNotification", {
	  Title = "Hecker's Hub Loaded!";
	  Text = 'For Executor: '.._G.exploit;
  })
  loadstring(game:HttpGet('https://hecker-cheats.github.io/heckers_hub/games/tapping_mania.lua', true))()
elseif game.PlaceId==155615604 then
  print('prison life detected.')
  if identifyexecutor then
    _G.exploit = identifyexecutor();
  end;
  game:GetService("StarterGui"):SetCore("SendNotification", {
	  Title = "Hecker's Hub Loaded!";
	  Text = 'For Executor: '.._G.exploit;
  })
  loadstring(game:HttpGet('https://hecker-cheats.github.io/heckers_hub/games/prison_life.lua', true))()
else
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Hecker's Hub No Loaded";
    Text = "Game not supported.";
  })
end

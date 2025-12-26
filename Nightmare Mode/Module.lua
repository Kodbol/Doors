local NightmareModeModule = {}
local Settings = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kodbol/Doors/refs/heads/main/Nightmare%20Mode/Settings.lua"))()

function NightmareModeModule.ChangeLight(color)
	    local TweenService = game:GetService("TweenService")
        local CurrentRoom = game.Workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
	for _, light in CurrentRoom.Assets:GetDescendants() do
            if light.ClassName == "PointLight" or light.ClassName == "SpotLight" or light.ClassName == "SurfaceLight" then
				local LightAnim = TweenService:Create(light, TweenInfo.new(2), {Color = color})
			 LightAnim:Play()
			elseif light.Name == "Neon" then
				local NeonAnim = TweenService:Create(light, TweenInfo.new(2), {Color = color})
			  NeonAnim:Play()
	   end 
	end
end

function NightmareModeModule.BreakLights()
                for _, v in game.Workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]:GetDescendants() do
				if v.Name == "Chandelier" then
					v:Destroy()
                elseif v.Name == "Light_Fixtures" or v.Name == "LightStand" then
                    v:Destroy()
				elseif v.Name == "FireLight" or v.Name == "FireParticles" or v.Name == "SmokeParticles" or v.Name == "SparkParticles" and v.Parent == "Log" then
					v:Destroy()
	    end
	end
end

function NightmareModeModule.CheckSettings()
       for index, value in Settings do
         if index == "Status" and value == false then
		   game.Players.LocalPlayer:Kick("Nightmare mode not working, reason: " .. Settings["Reason"])
	 end
   end
end

return NightmareModeModule

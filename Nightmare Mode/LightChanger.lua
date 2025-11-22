local LightChanger = {}

local TweenService = game:GetService("TweenService")

function LightChanger.ChangeLight(color)
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
	
return LightChanger

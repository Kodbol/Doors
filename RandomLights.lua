local lastroom = game.ReplicatedStorage.GameData.LatestRoom
local TweenService = game:GetService("TweenService")

for _, light in game.Workspace.CurrentRooms[tostring(lastroom.value)]:GetDescendants() do
    if light.ClassName == "PointLight" or light.ClassName == "SpotLight" or light.ClassName == "SurfaceLight" then
        local lightAnim = TweenService:Create(light, TweenInfo.new(2), {Color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))})
        lightAnim:Play()
  elseif light.Name == "Neon" then
        local lightAnim = TweenService:Create(light, TweenInfo.new(2), {Color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))})
        lightAnim:Play()
  end
end

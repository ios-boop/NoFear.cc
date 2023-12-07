local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("DrRay", "Default")
local tab = DrRayLibrary.newTab("My Tab", "ImageIdHere")
local RGB = Color3.fromRGB(255, 60, 35)

function zigzag(X)
return math.acos(math.cos(X*math.pi))/math.pi
end
   local counter = 0
   spawn(function()
       while wait() do
           counter = counter + 0.01
           RGB = (Color3.fromHSV(zigzag(counter),1,1))
       end
   end)
end)

tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)

tab.newToggle("Esp", "Toggles Esp", true, function(toggleState)
    if toggleState then
        while toggleState do
         wait(0.5)
    for i, ws in ipairs(workspace:GetDescendants()) do
        if ws:FindFirstChild("Humanoid") then
            if not ws:FindFirstChild("HumanoidRootPart").Color3 == RGB then
                if ws ~= game.Players.LocalPlayer.Character then
                  ws:FindFirstChild("HumanoidRootPart").Color3 = RGB
                end
            end
        end
    end
end
    else
        print("Off")
    end
end)

local Light = game:GetService(“Lighting”)
local R1 = Color3.fromRGB(255, 60, 35)
local Ambient_ = Light.Ambient
local ColorShift_Bottom_ = Light.ColorShift_Bottom
local ColorShift_Top_ = Light.ColorShift_Top


function zigzag(X)
return math.acos(math.cos(X*math.pi))/math.pi
end
   local counter = 0
   spawn(function()
       while wait() do
           counter = counter + 0.01
           R1 = (Color3.fromHSV(zigzag(counter),1,1))
       end
   end)
end)

function fullbright(X)
if X == true then
Light.Ambient = Color3.new(1,1,1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
Light.LightingChanged:Connect(fullbright(true))
elseif X == false then
Light.Ambient = Ambient_
Light.ColorShift_Bottom = ColorShift_Bottom_
Light.ColorShift_Top = ColorShift_Top_
end

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ios-boop/NoFear.cc/main/UI/src.lua"))()
local window = DrRayLibrary:Load("NoFear.cc || Trident Survival", "Default")
local tab = DrRayLibrary.newTab("Home", "ImageIdHere")



tab.newToggle("Full Bright", "Full Bright", true, function(toggleState)
    if toggleState then
        fullbright(true)
    else
        fullbright(false)
    end
end)

tab.newToggle("Esp", "Toggles Esp", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)

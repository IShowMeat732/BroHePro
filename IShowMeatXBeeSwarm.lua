local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("IShowMeat X Mythicbee", "Ocean")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("!!!อ่านหน่อนนะครับ!!")
Section:NewLabel("ห้ามแจกโดยเด็ดขาดเห็นปิดทันที")
Section:NewButton("วาปไข่", "วาปเก็บไข่ทองและไข่เพรช", function()
    for i = 1, 2 do
for i = 1, 6 do
game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(i)
end
wait(0.1)
end
for i, v in pairs(game:GetService("Workspace").Collectibles:GetChildren()) do
if v.BackDecal.Texture == "rbxassetid://1471850677" or v.BackDecal.Texture == "rbxassetid://1471849394" then
for i = 1, 10 do
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
wait(.05)
end
end
end
end)
Section:NewButton("วางไข่เพรช", "จะวางไข่เพรชไปที่รัง", function()
    local args = {
    [1] = 3,
    [2] = 1,
    [3] = "Diamond",
    [4] = 1,
    [5] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ConstructHiveCellFromEgg"):InvokeServer(unpack(args))
end)
Section:NewButton("วางไข่ทอง", "จะวางไข่ทองไปที่รัง", function()
    local args = {
    [1] = 3,
    [2] = 2,
    [3] = "Gold",
    [4] = 1,
    [5] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ConstructHiveCellFromEgg"):InvokeServer(unpack(args))
end)


local Tab = Window:NewTab("Credit")
local CreditSection = Tab:NewSection("Credit")
CreditSection:NewLabel("Script Made By.IShowMeat")
CreditSection:NewLabel("Great UI By.Kavo-UI")
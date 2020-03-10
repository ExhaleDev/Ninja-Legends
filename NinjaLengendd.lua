local lib = loadstring(game:HttpGet("https://d3to-finity.000webhostapp.com/files/source-0.1.2.txt"))()
local window = lib.new(true)
print("Welcome to Nexus Ninja Lengend Script!")
window.ChangeToggleKey(Enum.KeyCode.P)
--anti afk
print("Anti AFK Started!")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
-- rs
local rs = game:GetService("RunService").RenderStepped
-- tab
local tab1 = window:Category("Auto Farm")
local tab2 = window:Category("Auto Buy")
local tab3 = window:Category("Teleport")
local tab4 = window:Category("Mics")
local tab5 = window:Category("Credit")
local credit1 = tab5:Sector("Credit")
local crediit2 = credit1:Cheat(
    "Label",
    "Made by: logray#6024(Nexus)"
)
local inf = credit1:Cheat(
    "Label",
    "Welcome to Ninja Lengend Script, Enjoy using it!"
)

local farm1 = tab1:Sector("Farming")
local other = tab1:Sector("Other Farming")

local global = tab2:Sector("Global Settings")
local set = tab2:Sector("Settings")

local place = tab3:Sector("teleport")
local place2 = tab3:Sector("Evil Karma")

local main1 = tab4:Sector("Main Setting")
local other2 = tab4:Sector("Other Setting")
-- stuff
local farm = false
-- Auto Farm
farm1:Cheat(
	"Checkbox", -- Type
	"Auto Swing", -- Name
    function(State) -- Callback function
        farm = State
        while wait() do
                if farm then
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then 
                        game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
                            else
                            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                                if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then 
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                wait()
                                if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then 
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)                            
                                end
                            end
                end
            end
        end
    end
end
)
local sell = false
farm1:Cheat(
    "Checkbox",
    "Auto Sell",
    function(State)
        sell = State
        while wait(1) do
            if sell then
                game.workspace.sellAreaCircles["sellAreaCircle12"].circleInner.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
)
other:Cheat("Button", "Sell", function()
	game.workspace.sellAreaCircles["sellAreaCircle12"].circleInner.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)
local autochi = false
other:Cheat(
    "Checkbox",
    "Auto Chi",
    function(State)
        autochi = State
        while wait(.03) do
            if autochi then
                for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
                    if v.Name == "Blue Chi Crate" then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
                        wait(.16)
                    end
                end
            end
        end
    end
)
local robo = false
local eter = false
local ancient = false
other:Cheat(
    "Checkbox",
    "Farm Robot Boss",
    function(State)
        robo = State
        while true do
            wait()
            if robo then
                if game:GetService("Workspace").bossFolder:WaitForChild("RobotBoss"):WaitForChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
                    end
            end
        end
    end
)
other:Cheat(
    "Checkbox",
    "Farm Eternal Boss",
    function(State)
        eter = State
        while true do
            wait()
            if eter then
                if game:GetService("Workspace").bossFolder:WaitForChild("EternalBoss"):WaitForChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
                    end
            end
        end
    end
)
other:Cheat(
    "Checkbox",
    "Farm Ancient Magma Boss",
    function(State)
        ancient = State
        while true do
            wait()
            if ancient then
                if game:GetService("Workspace").bossFolder:WaitForChild("AncientMagmaBoss"):WaitForChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
                    end
            end
        end
    end
)
other:Cheat("Label", "Coming Soon")
-- Auto Buy
local buy = false
local sword1 = false
local belt1 = false
local rank1 = false
global:Cheat(
    "Checkbox",
    "Auto Buy",
    function(State)
        buy = State
    end
)
set:Cheat(
    "Checkbox",
    "Sword",
    function(State)
        sword1 = State
        while wait(1) do
            if buy and sword1 then
                local oh1 = "buyAllSwords"
                local oh2 = "Dragon Legend Island"
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2)
            end
        end
    end
)
set:Cheat(
    "Checkbox",
    "Belt",
    function(State)
        belt1 = State
        while wait(1) do
            if buy and belt1 then
                local oh1 = "buyAllBelts"
                local oh2 = "Dragon Legend Island"
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2)
            end
        end
    end
)
set:Cheat(
    "Checkbox",
    "Rank",
    function(State)
        rank1 = State
        while wait(1) do
            if buy and rank1 then
                print("rank")
        end
    end
end
)
-- Tp
place:Cheat("Dropdown", "Island", function(Option)
    if Option == "Enchanted Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
    else if Option == "Astral Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
    else if Option == "Mystical Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
    else if Option == "Space Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
    else if Option == "Tundra Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
    else if Option == "Eternal Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
    else if Option == "Sandstorm" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame
    else if Option == "Thunderstorm" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Thunderstorm"].CFrame
    else if Option == "Ancient Inferno Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Ancient Inferno Island"].CFrame
    else if Option == "Midnight Shadow Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Midnight Shadow Island"].CFrame
    else if Option == "Mythical Souls Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mythical Souls Island"].CFrame
    else if Option == "Winter Wonder Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Winter Wonder Island"].CFrame
    else if Option == "Golden Master Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Golden Master Island"].CFrame
	else if Option == "Dragon Legend Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Dragon Legend Island"].CFrame
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
	end
end, {
	options = {
		"Enchanted Island",
		"Astral Island",
		"Mystical Island",
		"Space Island",
        "Tundra Island",
        "Eternal Island",
        "Sandstorm",
        "Thunderstorm",
        "Ancient Inferno Island",
        "Midnight Shadow Island",
        "Mythical Souls Island",
        "Winter Wonder Island",
        "Golden Master Island",
		"Dragon Legend Island"
	}
})
place:Cheat("Button", "Unlock All Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Enchanted Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Astral Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mystical Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Space Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Tundra Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Eternal Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Sandstorm"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Thunderstorm"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Ancient Inferno Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Midnight Shadow Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Mythical Souls Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Winter Wonder Island"].CFrame
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts["Golden Master Island"].CFrame

end)
place2:Cheat("Dropdown", "Chest", function(Option)
	print("Dropdown option changed:", Option)
end, {
	options = {
		"Red",
		"White",
		"Green",
		"Pink",
		"Blue"
	}
})
-- Mics
other2:Cheat("Button", "Destroy Gui", function()
    game.CoreGui.FinityUI:Destroy()
end)
main1:Cheat("Button", "Toggle Popup", function()
	game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled
    game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled
end)
main1:Cheat("Button", "Max Jump", function()
    while true do
	wait(.001)
    game.Players.LocalPlayer.multiJumpCount.Value = "50"
    end
end)
main1:Cheat("Button", "Infinity Money", function()
	game:GetService("Players").LocalPlayer:kick("There're no script like this dumbass")
end)
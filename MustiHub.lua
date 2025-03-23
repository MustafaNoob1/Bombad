assert(firesignal, "Your exploit does not support firesignal.")
local UserInputService: UserInputService = game:GetService("UserInputService")
local RunService: RunService = game:GetService("RunService")
UserInputService.WindowFocusReleased:Connect(function()
   RunService.Stepped:Wait()
   pcall(firesignal, UserInputService.WindowFocused)
end)

if game.PlaceId == 74260430392611 then
    local CurrentVersion = "Rebirth Champions: Ultimate"

    -- Library
    local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    -- Main Frame
    local GUI = Mercury:Create{
        Name = CurrentVersion,
        Size = UDim2.fromOffset(600, 400),
        Theme = Mercury.Themes.Dark,
        Link = "https://github.com/deeeity/mercury-lib"
    }

    -- Local Var
    local isAutoClicking = false
    local selectedRebirthValue = nil
    local isFarmingRebirth = false
    local selectedEggValue = nil
    local isFarmingEgg = false

    -- local Lists
    local RebirthList = {
        ["1 Rebirth"] = 1,
        ["5 Rebirths"] = 2,
        ["10 Rebirths"] = 3,
        ["25 Rebirths"] = 4,
        ["50 Rebirths"] = 5,
        ["100 Rebirths"] = 6,
        ["200 Rebirths"] = 7,
        ["500 Rebirths"] = 8,
        ["1K Rebirths"] = 9,
        ["2.5K Rebirths"] = 10,
        ["5K Rebirths"] = 11,
        ["10K Rebirths"] = 12,
        ["15K Rebirths"] = 13,
        ["25K Rebirths"] = 14,
        ["50K Rebirths"] = 15,
        ["100K Rebirths"] = 16,
        ["200K Rebirths"] = 17,
        ["500K Rebirths"] = 18,
        ["1M Rebirths"] = 19,
        ["1.5M Rebirths"] = 20,
        ["5M Rebirths"] = 21,
        ["10M Rebirths"] = 22,
        ["25M Rebirths"] = 23,
        
    }

    local EggsList = {
        ["Basic"] = "Basic",
        ["Forest"] = "Forest",
        ["Farm"] = "Farm",
        ["Desert"] = "Desert",
        ["Nuclear"] = "Nuclear",
        ["Atlantis"] = "Atlantis",
        ["Kingdom"] = "Kingdom",
    }

    -- Farm Tab
    local FarmTab = GUI:Tab{
        Name = "Auto Farm",
        Icon = "rbxassetid://14036361048"
    }

    FarmTab:Toggle{
        Name = "Auto Click",
        StartingState = false,
        Description = "Auto Clicks",
        Callback = function(state)
        isAutoClicking = state
        while wait() do
            if  isAutoClicking then
                local args = {}

                game:GetService("ReplicatedStorage"):WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9):WaitForChild("Services", 9e9):GetChildren()[22]:WaitForChild("RE", 9e9):GetChildren()[3]:FireServer(unpack(args))
            end
        end
    end
    }

    FarmTab:Dropdown{
        Name = "Select Rebirth",
        StartingText = "Select...",
        Description = "It has to be an unlocked Rebirth Button",
        Items = {
            "1 Rebirth",
            "5 Rebirths",
            "10 Rebirths",
            "25 Rebirths",
            "50 Rebirths",
            "100 Rebirths",
            "200 Rebirths",
            "500 Rebirths",
            "1K Rebirths",
            "2.5K Rebirths",
            "5K Rebirths",
            "10K Rebirths",
            "15K Rebirths",
            "25K Rebirths",
            "50K Rebirths",
            "100K Rebirths",
            "200K Rebirths",
            "500K Rebirths",
            "1M Rebirths",
            "1.5M Rebirths",
            "5M Rebirths",
            "10M Rebirths",
            "25M Rebirths",
        },
        Callback = function(item)
            selectedRebirthValue = RebirthList[item]
            print("Selected: "..selectedRebirthValue)
        end
    }

    FarmTab:Toggle{
        Name = "Auto Rebirth",
        StartingState = false,
        Description = "Auto Rebirths selected Rebirth",
        Callback = function(state)
            isFarmingRebirth = state
            while wait() do
                if selectedRebirthValue and isFarmingRebirth == true then
                    local args = {
                        [1] = selectedRebirthValue;
                    }
                
                    game:GetService("ReplicatedStorage"):WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9):WaitForChild("Services", 9e9):GetChildren()[6]:WaitForChild("RF", 9e9):WaitForChild("jag känner en bot, hon heter anna, anna heter hon", 9e9):InvokeServer(unpack(args))
                end
            end
        end
    }

    FarmTab:Dropdown{
        Name = "Select Egg",
        StartingText = "Select...",
        Description = "Auto open Selected Egg",
        Items = {
            "Basic",
            "Forest",
            "Farm",
            "Desert",
            "Nuclear",
            "Atlantis",
            "Kingdom",
        },
        Callback = function(item)
            selectedEggValue = EggsList[item]
            print("Selected "..selectedEggValue)
        end
    }

    FarmTab:Toggle{
        Name = "Auto Open",
        StartingState = false,
        Description = "Auto Open selected Egg",
        Callback = function(state)
        isFarmingEgg = state
        while wait() do
            if selectedEggValue then
                local args = {
                    [1] = selectedEggValue,
                    [2] = 2
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Packages", 9e9):WaitForChild("Knit", 9e9):WaitForChild("Services", 9e9):GetChildren()[23]:WaitForChild("RE", 9e9):GetChildren()[3]:FireServer(unpack(args))
            end
        end
    end
    }
end

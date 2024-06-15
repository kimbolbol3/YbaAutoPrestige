if game.PlaceId ~= 2809202155 then return end
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

local WhitelistedHardwareID = loadstring(game:HttpGet("https://pastebin.com/raw/TgxcDCLt"))()

function CheckHardwareID()
    for _, whitelisted in pairs(WhitelistedHardwareID) do
        if HWID == whitelisted then
            return true
        end
    end
    return false
end


if CheckHardwareID() == true then



repeat wait(0.1) until game.Loaded  
wait(0.8)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local cantanything = false
local stillfarming = false
local TeleportService = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
local backframe
local FpsBOOST
local Black
local Status
local Prestige
local Level
local Stand
local Current
local fpsconnection

repeat wait() ;local par = Instance.new("Part") ;par.Anchored = true ;par.Size = Vector3.new(2047, 1, 2047) ;par.Position = Vector3.new(95.5, -85.8, -64.5) ;par.Transparency = 1 ;par.Name = "AntiVoid" ;par.Parent = workspace until workspace:FindFirstChild("AntiVoid")
repeat wait() ;local arrowspot = Instance.new("Part") ;arrowspot.Anchored = true ;arrowspot.Size = Vector3.new(30, 1, 30) ;arrowspot.Position = Vector3.new(722, 24440.008, 443) ;arrowspot.Transparency = 1 ;arrowspot.Name = "Arrow Spot" ;arrowspot.Parent = workspace until workspace:FindFirstChild("Arrow Spot")

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local function startBypasses()
    --[[local functionLibrary = require(game.ReplicatedStorage:WaitForChild('Modules').FunctionLibrary) --TODO: FIND THE REASON WHY THIS IS ERRORING SOMETIMES
    local old = functionLibrary.pcall

    functionLibrary.pcall = function(...)
        local f = ...

        if type(f) == 'function' and #getupvalues(f) == 11 then 
            return
        end
        
        return old(...)
    end]]

    --tp bypass
    local TPBypass
    TPBypass = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...)
      local args = {...}
      if self.Name == "Returner" and args[1] == "idklolbrah2de"  then
              return "  ___XP DE KEY"
          end
      return TPBypass(self, ...)
    end))
    local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    args = {...}
    if getnamecallmethod() == "FireServer" and self.Name == "RemoteEvent" and args[1] == "UpdateState" and string.match(tostring(args[2]), "PlatformStanding") then
    return
    end
    return old(self,...)
    end)
end

local function printd(text)
    if getgenv().Debugmode then
        warn(`⚠️DEBUG LOG⚠️: {text}`)
    end
end

local function skipScreen()
    if not LocalPlayer.PlayerGui:FindFirstChild("HUD") then
        print("I FOUND IT")
        local HUD = game.ReplicatedStorage.Objects.HUD:Clone()
        HUD.Parent = LocalPlayer.PlayerGui
    end

    print("I DID FOUND IT, MAYBE IT WILL WORK?")
    LocalCharacter.RemoteEvent:FireServer("PressedPlay")

    if LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen1") then
        LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen1"):Destroy()
    end

    if LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") then
        LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen"):Destroy()
    end
end

local function ChangeCurrentText(asdf)
    if getgenv().FpsBoost then
        Current.Text = asdf
    end
end

local function getmoney(int)
    for i,v in pairs(workspace.Item_Spawns.Items:GetChildren()) do
        if cantanything then return end
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                if b:IsA("ProximityPrompt") then
                    local item = b.ObjectText
                    if b.Parent then
                        cantanything = true
                        if item == "Ancient Scroll" then
                            local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                LocalCharacter.HumanoidRootPart.CFrame = b.Parent.Part.CFrame * CFrame.new(0,-15,0)
                            end)
                            wait(.5)
                            fireproximityprompt(b)
                            wait(0.75)
                            connected:Disconnect()
                            wait(0.75)
                            local itemi = LocalPlayer.Backpack:FindFirstChild(item)
                            repeat task.wait() LocalCharacter.Humanoid:EquipTool(itemi) until LocalCharacter:FindFirstChild(item)
                            wait(0.3)
                            LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Merchant",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
                            wait(1.1)
                            cantanything = false
                        elseif item == "Zepellin's Headband" then
                            if b.Parent then
                                if b.Parent:FindFirstChild("MeshPart") then
                                    local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                        if b and b.Parent then
                                            LocalCharacter.HumanoidRootPart.CFrame = b.Parent.MeshPart.CFrame * CFrame.new(0,-15,0)
                                        end
                                    end)
                                    wait(.5)
                                    fireproximityprompt(b)
                                    wait(0.75)
                                    connected:Disconnect()
                                    wait(0.75)
                                end
                            end
                        else
                            local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                if b and b.Parent then
                                    LocalCharacter.HumanoidRootPart.CFrame = b.Parent.MeshPart.CFrame * CFrame.new(0,-15,0)
                                end
                            end)
                            wait(.5)
                            fireproximityprompt(b)
                            wait(0.75)
                            connected:Disconnect()
                            wait(0.75)
                            local itemi = LocalPlayer.Backpack:FindFirstChild(item)
                            repeat task.wait() LocalCharacter.Humanoid:EquipTool(itemi) until LocalCharacter:FindFirstChild(item)
                            wait(0.3)
                            LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Merchant",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
                            wait(1.1)
                            cantanything = false
                        end
                        if tonumber(LocalPlayer.PlayerGui.HUD:WaitForChild("Main"):WaitForChild("DropMoney"):WaitForChild("Money").Text) >= int then
                            return
                        end
                    end
                end
            end
        end
    end
end

local function UseRoka()
    cantanything = true
    local Roka = LocalPlayer.Backpack:FindFirstChild("Rokakaka")
    if not Roka then
        cantanything = false
        return "NoRoka"
    end
    if table.find(getgenv().Standuse,LocalPlayer:FindFirstChild("PlayerStats").Stand.Value) then
        cantanything = false
        return
    end
    ChangeCurrentText(`Current Kill : Get Stand`)
    LocalCharacter.Humanoid:EquipTool(Roka)
    cantanything = true


    repeat task.wait() LocalCharacter.Humanoid:EquipTool(Roka) LocalCharacter:FindFirstChild(Roka.Name):Activate() until LocalPlayer.PlayerGui:FindFirstChild("DialogueGui")
    repeat
        pcall(function()
            task.wait()
			firesignal(LocalPlayer.PlayerGui.DialogueGui.Frame.ClickContinue.MouseButton1Click)
			firesignal(LocalPlayer.PlayerGui.DialogueGui.Frame.Options.Option1.TextButton.MouseButton1Click)
            cantanything = true
        end)
    until not LocalPlayer.PlayerGui:FindFirstChild("DialogueGui")

    wait(4)
    cantanything = false
    return "End"
end



local function UseArrow()
    cantanything = true
	local Stand1 = LocalPlayer:FindFirstChild("PlayerStats").Stand.Value
    if Stand1 ~= "None" then
        cantanything = false
        return "StandHave"
    end
    local Arrow =  LocalPlayer.Backpack:FindFirstChild("Stand Arrow") or LocalPlayer.Backpack:FindFirstChild("Mysterious Arrow")
    if not Arrow then
        cantanything = false
        return "NoArrow"
    end
    ChangeCurrentText(`Current Kill : Get Stand`)
    LocalCharacter.Humanoid:EquipTool(Arrow)
    cantanything = true
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Worthiness I",["SkillTreeType"] = "Character"})

    repeat task.wait() LocalCharacter.Humanoid:EquipTool(Arrow) LocalCharacter:FindFirstChild(Arrow.Name):Activate() until LocalPlayer.PlayerGui:FindFirstChild("DialogueGui")
    repeat
        pcall(function()
            task.wait()
			firesignal(LocalPlayer.PlayerGui.DialogueGui.Frame.ClickContinue.MouseButton1Click)
			firesignal(LocalPlayer.PlayerGui.DialogueGui.Frame.Options.Option1.TextButton.MouseButton1Click)
            cantanything = true
        end)
    until not LocalPlayer.PlayerGui:FindFirstChild("DialogueGui")

    wait(1)
    while wait(0.5) do
        if not LocalCharacter:FindFirstChild("UsingArrow") then
            cantanything = false
            return LocalPlayer:FindFirstChild("PlayerStats").Stand.Value
        end
    end
    print(LocalPlayer:FindFirstChild("PlayerStats").Stand.Value)
    if table.find(getgenv().Standuse,LocalPlayer:FindFirstChild("PlayerStats").Stand.Value) then
        return
    else
    end
    return LocalPlayer:FindFirstChild("PlayerStats").Stand.Value
end


local function Quest()
    if not LocalCharacter then return end
    local LocalRemote = LocalCharacter:FindFirstChild("RemoteEvent")
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #1",["Dialogue"] = "Dialogue2",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #1",["Dialogue"] = "Dialogue6",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #2",["Dialogue"] = "Dialogue3",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #3",["Dialogue"] = "Dialogue3",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #3",["Dialogue"] = "Dialogue6",["Option"] = "Option1"})
    --LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #4",["Dialogue"] = "Dialogue3",["Option"] = "Option1"}) -- lighter dialogue
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #5",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #6",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #7",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #8",["Dialogue"] = "Dialogue4",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #9",["Dialogue"] = "Dialogue7",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #10",["Dialogue"] = "Dialogue6",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #11",["Dialogue"] = "Dialogue8",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #11",["Dialogue"] = "Dialogue11",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #11",["Dialogue"] = "Dialogue13",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #12",["Dialogue"] = "StorylineHint"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #12",["Dialogue"] = "Dialogue3",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #13",["Dialogue"] = "Dialogue7",["Option"] = "Option1"})
    LocalRemote:FireServer("EndDialogue", {["NPC"] = "Storyline #14",["Dialogue"] = "Dialogue2",["Option"] = "Option1"})
    --LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Storyline #14",["Dialogue"] = "Dialogue7",["Option"] = "Option1"}) diavolo defeat after  sceen bc very laggy and cant move spam using move and stun
end

local function ReturnQuest(name)
    local quest  = LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests
    if quest:FindFirstChild(name) then
        return true
    else
        return false
    end
end

local function ArrowRoka()
    if stillfarming then return end
    for i,v in pairs(workspace.Item_Spawns.Items:GetChildren()) do
        if cantanything then return end
        if LocalPlayer.PlayerGui:FindFirstChild("DialogueGui") then return end
        if LocalCharacter:FindFirstChild("UsingArrow") then return end
        stillfarming = true
        if v:IsA("Model") then
            if cantanything then return end
            for a,b in pairs(v:GetChildren()) do
                if cantanything then return end
                if b:IsA("ProximityPrompt") then
                    local item = b.ObjectText
                    if item == "Rokakaka" then
                        ChangeCurrentText(`Current Kill : Get Stand`)
                        local count = 0
                        for z,x in pairs(LocalPlayer.Backpack:GetChildren())do
                            if x.Name == "Rokakaka" then
                                count += 1
                            end
                        end
                        if b.Parent then
                            if count > 23 then b.Parent:Destroy() end
                        end
                        if b.Parent then
                            if b.Parent:FindFirstChild("MeshPart") then
                                local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                    if b and b.Parent then
                                        LocalCharacter.HumanoidRootPart.CFrame = b.Parent.MeshPart.CFrame * CFrame.new(0,-15,0)
                                    end
                                end)
                                wait(.5)
                                fireproximityprompt(b)
                                wait(0.75)
                                connected:Disconnect()
                                wait(0.75)
                            end
                        end
                    elseif item == "Zepellin's Headband" then
                        ChangeCurrentText(`Current Kill : Get Stand`)
                        if b.Parent then
                            if b.Parent:FindFirstChild("MeshPart") then
                                local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                    if b and b.Parent then
                                        LocalCharacter.HumanoidRootPart.CFrame = b.Parent.MeshPart.CFrame * CFrame.new(0,-15,0)
                                    end
                                end)
                                wait(.5)
                                fireproximityprompt(b)
                                wait(0.75)
                                connected:Disconnect()
                                wait(0.75)
                            end
                        end
                    elseif item == "Mysterious Arrow" then
                        ChangeCurrentText(`Current Kill : Get Stand`)
                        local count = 0
                        for z,x in pairs(LocalPlayer.Backpack:GetChildren())do
                            if x.Name == "Mysterious Arrow" then
                                count += 1
                            end
                        end
                        if b.Parent then
                            if count > 23 then b.Parent:Destroy() end
                        end
                        if b.Parent then
                            if b.Parent:FindFirstChild("MeshPart") then
                                local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                    LocalCharacter.HumanoidRootPart.CFrame = b.Parent.MeshPart.CFrame * CFrame.new(0,-15,0)
                                end)
                                wait(.5)
                                fireproximityprompt(b)
                                wait(0.75)
                                connected:Disconnect()
                                wait(0.75)
                            end
                        end
                    end
                end
            end
        end
    end
    stillfarming = false
end



local function killNPC(npcName, npcDistance, dontDestroyOnKill, extraParameters)
    print("DEBUG CHECK 1", npcName, npcDistance, dontDestroyOnKill, extraParameters)
    local PlayerStats = LocalPlayer:FindFirstChild("PlayerStats")
	local NPC = workspace.Living:WaitForChild(npcName,60)
    local tagService = game:GetService("CollectionService")
    local hasHamon, hasRage, beingTargeted, chargingHamon = true, true, true, false
    local healthLimit = 0.0001
	local deadCheck
    local BlockBreaker
    local setStandMorphPosition
    local HamonCharge
    local nonestand = false

    if not LocalCharacter:FindFirstChild("Hamon") then
        hasHamon = false
    end 

    if not LocalCharacter:FindFirstChild("Rage") then
        hasRage = false
    end
    
    if not NPC then
        print("noway")
        return "NPCNotFound"
    end

    local function getNPC() --allows calling functions to get current npc targeted
        return NPC
    end

    local function checkCounters()
        local existingSound = NPC.HumanoidRootPart:FindFirstChildOfClass("Sound")
        if (existingSound and existingSound.SoundId == "rbxassetid://2659057948") or (NPC:FindFirstChild("Highlight")) then
            return true
            end
        return false
    end

    if extraParameters then --incase some function wants current npc attacking
        extraParameters(getNPC)
    end

    if PlayerStats.Stand.Value == "None" then
        setStandMorphPosition = function()
            nonestand = true
            if NPC and NPC:FindFirstChild("HumanoidRootPart") then
                LocalCharacter.HumanoidRootPart.CFrame = NPC.HumanoidRootPart.CFrame * CFrame.new(0,0,2.5)
            else
                beingTargeted = false    
            end
        end
        BlockBreaker = function()

            if tagService:HasTag(NPC, "Blocking") then --neat feature yba
                LocalCharacter.RemoteFunction:InvokeServer("Attack", "m2")
            elseif hasHamon then
                if LocalCharacter.Hamon.Value >= 1 then
                    LocalCharacter.RemoteFunction:InvokeServer("Attack", "m1")
                end
            else
                LocalCharacter.RemoteFunction:InvokeServer("Attack", "m1")
            end
        end
        HamonCharge = function()
            if hasHamon then
                if LocalCharacter.Hamon.Value <= 0 then
                    LocalCharacter.RemoteFunction:InvokeServer("AssignSkillKey", {["Type"] = "Spec",["Key"] = "Enum.KeyCode.L",["Skill"] = "Hamon Charge"}) --to prevent overloading
                    LocalCharacter.RemoteEvent:FireServer("InputBegan", {["Input"] = Enum.KeyCode.L})
                end
            end

            if hasRage then
                if LocalCharacter.Rage.Value >= 80 and PlayerStats.Stand.Value ~= "Crazy Diamond" then
                    LocalCharacter.RemoteEvent:FireServer("InputBegan", {["Input"] = Enum.KeyCode.H})
                end
            end
        end
    else
        setStandMorphPosition = function()
            if not LocalCharacter:FindFirstChild("SummonedStand").Value then
                LocalCharacter.RemoteFunction:InvokeServer("ToggleStand", "Toggle")
                return
            end
            if NPC and NPC:FindFirstChild("HumanoidRootPart") then
                local finalPosition = NPC.HumanoidRootPart.CFrame * CFrame.new(0,0,2.5)
                LocalCharacter.StandMorph.PrimaryPart.CFrame = finalPosition
                LocalCharacter.HumanoidRootPart.CFrame = LocalCharacter.StandMorph.PrimaryPart.CFrame + LocalCharacter.StandMorph.PrimaryPart.CFrame.lookVector - Vector3.new(0, 20, 0)
            else
                beingTargeted = false
            end
            
            

             end

        BlockBreaker = function()
            if not LocalCharacter:FindFirstChild("SummonedStand").Value then
                return
            end

            if tagService:HasTag(NPC, "Blocking") then --neat feature yba
                LocalCharacter.RemoteEvent:FireServer("InputBegan", {["Input"] = Enum.KeyCode.R})
            elseif hasHamon then
                if LocalCharacter.Hamon.Value >= 1 then
                    LocalCharacter.RemoteFunction:InvokeServer("Attack", "m1")
                end
            else
                LocalCharacter.RemoteFunction:InvokeServer("Attack", "m1")
            end
        end

        HamonCharge = function()
            if hasHamon then
                if LocalCharacter.Hamon.Value <= 0 then
                    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Charge",["SkillTreeType"] = "Spec"})
                    
                    LocalCharacter.RemoteFunction:InvokeServer("AssignSkillKey", {["Type"] = "Spec",["Key"] = "Enum.KeyCode.L",["Skill"] = "Hamon Charge"}) --to prevent overloading
                    LocalCharacter.RemoteEvent:FireServer("InputBegan", {["Input"] = Enum.KeyCode.L})
                end
            end

            if hasRage then
                if LocalCharacter.Rage.Value >= 80 then
                    LocalCharacter.RemoteEvent:FireServer("InputBegan", {["Input"] = Enum.KeyCode.H})
                end
            end
        end
    end

    deadCheck = LocalPlayer.PlayerGui.HUD.Main.DropMoney.Money.ChildAdded:Connect(function(child)
        local number = tonumber(string.match(child.Name,"%d+"))
        if number and NPC then
            if LocalCharacter:FindFirstChild("FocusCam") then
                LocalCharacter:FindFirstChild("FocusCam"):Destroy()
            end
            local Folder = Instance.new("Folder")
            Folder.Name = "DontTarget"
            Folder.Parent = NPC

            beingTargeted = false

            if not dontDestroyOnKill then
                NPC:Destroy()
            end
            deadCheck:Disconnect()
            return true
        end
    end)

    if PlayerStats.Stand.Value ~= "None" then
        if not LocalCharacter:FindFirstChild("FocusCam") and LocalCharacter:FindFirstChild("SummonedStand").Value then
            local FocusCam = Instance.new("ObjectValue", LocalPlayer)
            FocusCam.Parent = LocalCharacter
            FocusCam.Name = "FocusCam"
            FocusCam.Value = LocalCharacter.StandMorph.PrimaryPart
        end
    end

    --[[task.delay(getgenv().delaySwitch, function()
        beingTargeted = false
        deadCheck:Disconnect()
    end)]]

    while beingTargeted do
        task.wait()

        if not workspace.Living:FindFirstChild(npcName) --[[or getgenv().Abort or NPC:WaitForChild("Humanoid").Health <= healthLimit]] then
            if LocalCharacter:FindFirstChild("FocusCam") then
                LocalCharacter:FindFirstChild("FocusCam"):Destroy()
            end

            local Folder = Instance.new("Folder")
            Folder.Name = "DontTarget"
            Folder.Parent = NPC

            if not dontDestroyOnKill then
                NPC:Destroy()
            end

            deadCheck:Disconnect()
            beingTargeted = false
            return true
        end

        if NPC:FindFirstChild("DontTarget") then
            if LocalCharacter:FindFirstChild("FocusCam") then
                LocalCharacter:FindFirstChild("FocusCam"):Destroy()
            end
            NPC:Destroy()

            deadCheck:Disconnect()
            beingTargeted = false
            return false
        end

        task.spawn(setStandMorphPosition)
        task.spawn(HamonCharge)
        task.spawn(BlockBreaker)
    end
	return false
end
local  function UpgradePower()
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Destructive Power I",["SkillTreeType"] = "Stand"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Destructive Power II",["SkillTreeType"] = "Stand"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Destructive Power III",["SkillTreeType"] = "Stand"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Destructive Power IV",["SkillTreeType"] = "Stand"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Destructive Power V",["SkillTreeType"] = "Stand"})
end

local function UpgradeSpec()
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Punch",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Lung Capacity I",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Lung Capacity II",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Lung Capacity III",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Lung Capacity IV",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Lung Capacity V",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Breathing I",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Breathing II",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Breathing III",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Breathing IV",["SkillTreeType"] = "Spec"})
    LocalCharacter.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Hamon Breathing V",["SkillTreeType"] = "Spec"})
end

local function gethamon()
    if stillfarming then return end
    stillfarming = true
    for i,v in pairs(workspace.Item_Spawns.Items:GetChildren()) do
        if cantanything then return end
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                if b:IsA("ProximityPrompt") then
                    local item = b.ObjectText
                    if b.Parent then
                        if item == "Zepellin's Headband" then
                            cantanything = true
                            ChangeCurrentText(`Current Kill : Get Hamon`)
                            local connected = game:GetService("RunService").Heartbeat:Connect(function()
                                LocalCharacter.HumanoidRootPart.CFrame = b.Parent.Part.CFrame * CFrame.new(0,-15,0)
                            end)
                            wait(.5)
                            fireproximityprompt(b)
                            wait(0.75)
                            connected:Disconnect()
                            wait(1)
                            LocalCharacter:FindFirstChild("RemoteEvent"):FireServer("EndDialogue", {["NPC"] = "Jonathan",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
                            wait(0.65)
                            cantanything = false
                        end
                        if LocalCharacter:FindFirstChild("Hamon") then
                            return
                        end
                    end
                end
            end
        end
    end
    stillfarming = false
end

local function killern(NPC)
    local LocalStats = LocalPlayer:FindFirstChild("PlayerStats")
    local Prestige = LocalStats:FindFirstChild("Prestige").Value
    local Level = LocalStats:FindFirstChild("Level").Value
    local quest  = LocalPlayer.PlayerGui.HUD.Main.Frames.Quest.Quests
    local function hwasal()
        if table.find(getgenv().Standuse,LocalStats.Stand.Value) then
            if getgenv().FpsBoost then
                Stand.Text = `Stand : {LocalStats.Stand.Value}`
            end
            UpgradePower()
            UpgradeSpec()
            if tonumber(LocalPlayer.PlayerGui.HUD:WaitForChild("Main"):WaitForChild("DropMoney"):WaitForChild("Money").Text) <= 10000 and not LocalCharacter:FindFirstChild("Hamon") then
                ChangeCurrentText(`Current Kill : Get Hamon`)
                repeat wait() getmoney(10000) until tonumber(LocalPlayer.PlayerGui.HUD:WaitForChild("Main"):WaitForChild("DropMoney"):WaitForChild("Money").Text) >= 10000
            end
            if Level >= 10 and not LocalCharacter:FindFirstChild("Hamon") then
                if LocalPlayer.Backpack:FindFirstChild("Zepellin's Headband") and not LocalCharacter:FindFirstChild("Hamon") then
                    LocalCharacter:FindFirstChild("RemoteEvent"):FireServer("EndDialogue", {["NPC"] = "Jonathan",["Dialogue"] = "Dialogue5",["Option"] = "Option1"})
                    ChangeCurrentText(`Current Kill : Get Hamon`)
                end
                wait(0.5)
                if not LocalCharacter:FindFirstChild("Hamon") then
                    ChangeCurrentText(`Current Kill : Get Hamon`)
                    repeat LocalCharacter:FindFirstChild("Hamon") wait() until gethamon()
                end
            end
            if not LocalCharacter:FindFirstChild("SummonedStand").Value then
                LocalCharacter.RemoteFunction:InvokeServer("ToggleStand", "Toggle")
                wait(1)
                if not LocalCharacter:FindFirstChild("SummonedStand").Value then
                    LocalCharacter.Humanoid.Health = 0
                    return
                end
            end
            
            ChangeCurrentText(`Current Kill : {NPC}`)
            killNPC(NPC,1,false)
            
            
            return
        end
        if LocalStats.Stand.Value ~= "None" then
            if not table.find(getgenv().Standuse,LocalStats.Stand.Value) then
                local  roka = UseRoka()
                if roka == "NoRoka" then
                    if not table.find(getgenv().Standuse,LocalStats.Stand.Value) then
                        ArrowRoka()
                    end
                end
            end
        end
        local stand = UseArrow()
        if stand == "NoArrow" then
            ArrowRoka()
        end
        if table.find(getgenv().Standuse,stand) then
            UpgradePower()
            LocalCharacter.Humanoid.Health = 0
        else
            local roka = UseRoka()
            if roka == "NoRoka" then
                ArrowRoka()
            end
        end
    end
    hwasal()
end

startBypasses()
repeat wait(1) skipScreen() until not LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")

if getgenv().FpsBoost then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
    fpsconnection = game:GetService("RunService").Heartbeat:Connect(function()
        if LocalPlayer.PlayerGui:FindFirstChild("HUD") then
            LocalPlayer.PlayerGui:FindFirstChild("HUD").Enabled = false
        end
        if LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui") then
            LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui").Enabled = false
        end
        if LocalPlayer.PlayerGui:FindFirstChild("Rage Gui") then
            LocalPlayer.PlayerGui:FindFirstChild("Rage Gui").Enabled = false
        end
        if LocalPlayer.PlayerGui:FindFirstChild("LocationGui") then
            LocalPlayer.PlayerGui:FindFirstChild("LocationGui").Enabled = false
        end
        if LocalPlayer.PlayerGui:FindFirstChild("BlackScreen") then
            LocalPlayer.PlayerGui:FindFirstChild("BlackScreen").Enabled = false
        end
    end)

    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)

    FpsBOOST = Instance.new("ScreenGui")
    Black = Instance.new("Frame")
    Status = Instance.new("TextLabel")
    Current = Instance.new("TextLabel")
    Prestige = Instance.new("TextLabel")
    Level = Instance.new("TextLabel")
    Stand = Instance.new("TextLabel")

    FpsBOOST.Name = "FpsBOOST"
    FpsBOOST.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    FpsBOOST.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    FpsBOOST.ResetOnSpawn = false
    FpsBOOST.IgnoreGuiInset = true

    Black.Name = "Black"
    Black.Parent = FpsBOOST
    Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Black.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Black.BorderSizePixel = 0
    Black.Size = UDim2.new(1, 0, 1, 0)

    Status.Name = "Status"
    Status.Parent = FpsBOOST
    Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Status.BackgroundTransparency = 1.000
    Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Status.BorderSizePixel = 0
    Status.Position = UDim2.new(0.29769519, 0, 0.108005047, 0)
    Status.Size = UDim2.new(0.403892279, 0, 0.136495009, 0)
    Status.Font = Enum.Font.FredokaOne
    Status.Text = "Current Status"
    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
    Status.TextScaled = true
    Status.TextSize = 14.000
    Status.TextWrapped = true


    Current.Name = "Current"
    Current.Parent = FpsBOOST
    Current.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Current.BackgroundTransparency = 1.000
    Current.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Current.BorderSizePixel = 0
    Current.Position = UDim2.new(0.26888597, 0, 0.348157525, 0)
    Current.Size = UDim2.new(0.461715728, 0, 0.100000016, 0)
    Current.Font = Enum.Font.FredokaOne
    Current.Text = "Current Kill : idk"
    Current.TextColor3 = Color3.fromRGB(255, 255, 255)
    Current.TextScaled = true
    Current.TextSize = 14.000
    Current.TextWrapped = true

    Prestige.Name = "Prestige"
    Prestige.Parent = FpsBOOST
    Prestige.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Prestige.BackgroundTransparency = 1.000
    Prestige.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Prestige.BorderSizePixel = 0
    Prestige.Position = UDim2.new(0.351472408, 0, 0.494282037, 0)
    Prestige.Size = UDim2.new(0.295902669, 0, 0.100000016, 0)
    Prestige.Font = Enum.Font.FredokaOne
    Prestige.Text = "Prestige : 0"
    Prestige.TextColor3 = Color3.fromRGB(255, 255, 255)
    Prestige.TextScaled = true
    Prestige.TextSize = 14.000
    Prestige.TextWrapped = true

    Level.Name = "Level"
    Level.Parent = FpsBOOST
    Level.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Level.BackgroundTransparency = 1.000
    Level.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Level.BorderSizePixel = 0
    Level.Position = UDim2.new(0.351472408, 0, 0.639135897, 0)
    Level.Size = UDim2.new(0.295902669, 0, 0.100000016, 0)
    Level.Font = Enum.Font.FredokaOne
    Level.Text = "Level : 0"
    Level.TextColor3 = Color3.fromRGB(255, 255, 255)
    Level.TextScaled = true
    Level.TextSize = 14.000
    Level.TextWrapped = true

    Stand.Name = "Stand"
    Stand.Parent = FpsBOOST
    Stand.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Stand.BackgroundTransparency = 1.000
    Stand.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Stand.BorderSizePixel = 0
    Stand.Position = UDim2.new(0.351472408, 0, 0.777636588, 0)
    Stand.Size = UDim2.new(0.295902669, 0, 0.100000016, 0)
    Stand.Font = Enum.Font.FredokaOne
    Stand.Text = "Stand : None"
    Stand.TextColor3 = Color3.fromRGB(255, 255, 255)
    Stand.TextScaled = true
    Stand.TextSize = 14.000
    Stand.TextWrapped = true
end

printd("Hello")
printd("DebugLog Test")
--wait(5)


local function main()
    if cantanything then return end
    local LocalStats = LocalPlayer:FindFirstChild("PlayerStats")
    local Prestige1 = LocalStats:FindFirstChild("Prestige").Value
    local Level1 = LocalStats:FindFirstChild("Level").Value

    if Prestige1 == 3 and Level1 == 50 then
        if getgenv().FpsBoost then
            fpsconnection:Disconnect()
            getgenv().FpsBoost = false
            local StarterGui = game:GetService("StarterGui")
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
            game:GetService("RunService"):Set3dRenderingEnabled(true)
            FpsBOOST:Destroy()
            if LocalPlayer.PlayerGui:FindFirstChild("HUD") then
                LocalPlayer.PlayerGui:FindFirstChild("HUD").Enabled = false
            end
            if LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui") then
                LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("Rage Gui") then
                LocalPlayer.PlayerGui:FindFirstChild("Rage Gui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("LocationGui") then
                LocalPlayer.PlayerGui:FindFirstChild("LocationGui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("BlackScreen") then
                LocalPlayer.PlayerGui:FindFirstChild("BlackScreen").Enabled = true
            end
        end
        return
    end

    if getgenv().FpsBoost then
        Level.Text = `Level : {Level1}`
        Prestige.Text = `Prestige : {Prestige1}`
    end

    Quest()
    wait(0.05)
    if ReturnQuest("Help Giorno by Defeating Security Guards") then
        if getgenv().FpsBoost then
            Stand.Text = `Stand : {LocalStats.Stand.Value}`
            Current.Text = `Current Kill : Security Guard`
        end
        killNPC("Security Guard",1,true)
    elseif ReturnQuest("Defeat Leaky Eye Luca") then
        killern("Leaky Eye Luca")
    elseif ReturnQuest("Defeat Bucciarati") then
        killern("Bucciarati")
    elseif ReturnQuest("Meet Fugo") then
        LocalCharacter:FindFirstChild("RemoteEvent"):FireServer("EndDialogue", {["NPC"] = "Storyline #4",["Dialogue"] = "Dialogue3",["Option"] = "Option1"})
        wait(0.5)
    elseif ReturnQuest("Collect $5,000 To Cover For Popo's Real Fortune") then
        ChangeCurrentText("Current Kill : Collect Money")
        repeat wait() getmoney(5000) until tonumber(LocalPlayer.PlayerGui.HUD:WaitForChild("Main"):WaitForChild("DropMoney"):WaitForChild("Money").Text) >= 5000
    elseif ReturnQuest("Defeat Fugo And His Purple Haze") then
        killern("Fugo")
    elseif ReturnQuest("Defeat Pesci") then
        killern("Pesci")
    elseif ReturnQuest("Defeat Ghiaccio") then
        killern("Ghiaccio")
    elseif ReturnQuest("Defeat Diavolo") then
        killern("Diavolo")
        LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Storyline #14",["Dialogue"] = "Dialogue7",["Option"] = "Option1"})
        wait(1)
        LocalCharacter.Humanoid.Health = 0
    elseif ReturnQuest("Take down 3 zombie henchmans") then
        killern("Zombie Henchman")
    elseif Prestige1 == 3 and Level1 == 50 then
        printd("end the script")
        if getgenv().FpsBoost then
            fpsconnection:Disconnect()
            getgenv().FpsBoost = false
            local StarterGui = game:GetService("StarterGui")
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
            game:GetService("RunService"):Set3dRenderingEnabled(true)
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
            FpsBOOST:Destroy()
            if LocalPlayer.PlayerGui:FindFirstChild("HUD") then
                LocalPlayer.PlayerGui:FindFirstChild("HUD").Enabled = false
            end
            if LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui") then
                LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("Rage Gui") then
                LocalPlayer.PlayerGui:FindFirstChild("Rage Gui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("LocationGui") then
                LocalPlayer.PlayerGui:FindFirstChild("LocationGui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("BlackScreen") then
                LocalPlayer.PlayerGui:FindFirstChild("BlackScreen").Enabled = true
            end
        end
        return
    elseif Prestige1 == 0 and Level1 == 35 then
        LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Prestige",["Dialogue"] =  "Dialogue2",["Option"] = "Option1"})
    elseif Prestige1 == 1 and Level1 == 40 then
        LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Prestige",["Dialogue"] =  "Dialogue2",["Option"] = "Option1"})
    elseif Prestige1 == 2 and Level1 == 45 then
        LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Prestige",["Dialogue"] =  "Dialogue2",["Option"] = "Option1"})
    else
        LocalCharacter.RemoteEvent:FireServer("EndDialogue", {["NPC"] = "Dracula",["Dialogue"] = "Dialogue4",["Option"] = "Option1"})
    end
    main()


end
workspace.Living.ChildAdded:Connect(function(character)
    if character.Name == LocalPlayer.Name then
        wait(1.5)
        LocalCharacter = character
        LocalPlayer = game.Players:GetPlayerFromCharacter(character)
        Players = game:GetService("Players")
        cantanything = false
        stillfarming = false
        main()
    end
end)

coroutine.resume(coroutine.create(function()
    local LocalStats = LocalPlayer:FindFirstChild("PlayerStats")
    local Prestige = LocalStats:FindFirstChild("Prestige").Value
    local Level = LocalStats:FindFirstChild("Level").Value

    if Prestige == 3 and Level == 50 then
        if getgenv().FpsBoost then
            fpsconnection:Disconnect()
            getgenv().FpsBoost = false
            game:GetService("RunService"):Set3dRenderingEnabled(true)
            local StarterGui = game:GetService("StarterGui")
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
            FpsBOOST:Destroy()
            if LocalPlayer.PlayerGui:FindFirstChild("HUD") then
                LocalPlayer.PlayerGui:FindFirstChild("HUD").Enabled = false
            end
            if LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui") then
                LocalPlayer.PlayerGui:FindFirstChild("Hamon Gui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("Rage Gui") then
                LocalPlayer.PlayerGui:FindFirstChild("Rage Gui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("LocationGui") then
                LocalPlayer.PlayerGui:FindFirstChild("LocationGui").Enabled = true
            end
            if LocalPlayer.PlayerGui:FindFirstChild("BlackScreen") then
                LocalPlayer.PlayerGui:FindFirstChild("BlackScreen").Enabled = true
            end
        end
        return
    end
    while wait(10) do
        if backframe then
            if backframe == LocalCharacter.HumanoidRootPart.Position then
                TeleportService:Teleport(game.PlaceId)
            end
            backframe = LocalCharacter.HumanoidRootPart.Position
        else
            backframe = LocalCharacter.HumanoidRootPart.Position
        end
    end
end))
main()
end

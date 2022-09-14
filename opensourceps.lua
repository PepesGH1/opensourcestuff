getgenv().Allow = nil
if getgenv().Allow == nil then
    local AntiFunc = {
        ["print"] = print,
        ["warn"] = warn,
        ["rconsoleprint"] = rconsoleprint,
        ["rconsolewarn"] = rconsolewarn,
        ["rconsoleinfo"] = rconsoleinfo,
        ["rconsoleinput"] = rconsoleinput,
        ["rconsoleinputasync"] = rconsoleinputasync,
        ["rconsoleerr"] = rconsoleerr,
        ["rconsolename"] = rconsolename,
        ["replaceclosure"] = replaceclosure,
        ["hookfunction"] = hookfunction,
        ["setreadonly"] = setreadonly,
        ["clonefunction"] = clonefunction,
        ["newcclosure"] = newcclosure,
        ["hookfunc"] = hookfunc
    }

    if getgenv().Allow == nil then
        getgenv().Allow = false
    end

    if print then
    local aq;
    aq = hookfunc(print or getrenv().print or getreg().print, function(...)
        if getgenv().Allow then
            return aq(...)
        end
        return aq('Ox01')
    end)
    end
    if warn then
    local aw;
    aw = hookfunc(warn or getrenv().warn or getreg().warn, function(...)
        if getgenv().Allow then
            return aw(...)
        end
        return aw('Ox02')
    end)
    end
    if rconsoleprint then
    local ae;
    ae = hookfunc(rconsoleprint, function(...)
        if getgenv().Allow then
            return ae(...)
        end
        return ae('Ox03')
    end)
    end
    if rconsolewarn then
    local ar;
    ar = hookfunc(rconsolewarn, function(...)
        if getgenv().Allow then
            return ar(...)
        end
        return ar('Ox04')
    end)
    end
    if rconsoleinfo then
    local at;
    at = hookfunc(rconsoleinfo, function(...)
        if getgenv().Allow then
            return at(...)
        end
        return at('Ox05')
    end)
    end
    if rconsoleinputasync then
        local au;
        au = hookfunc(rconsoleinputasync, function(...)
            if getgenv().Allow then
                return au(...)
            end
            return au('Ox06')
        end)
    end
    if rconsoleerr then
    local ai;
    ai = hookfunc(rconsoleerr, function(...)
        if getgenv().Allow then
            return ai(...)
        end
        return ai('Ox07')
    end)
    end
    if rconsolename then
    local ao;
    ao = hookfunc(rconsolename, function(...)
        if getgenv().Allow then
            return ao(...)
        end
        return ao('Ox08')
    end)
    end
    if replaceclosure then
    local ap;
    ap = hookfunc(replaceclosure, function(...)
        if getgenv().Allow then
            return ap(...)
        end
        return
    end)
    end
    if hookfunction then
    local av;
    av = hookfunc(hookfunction, function(...)
        if getgenv().Allow then
            return av(...)
        end
        return 
    end)
    end
    local as;
    as = hookfunc(setreadonly, function(...)
        if getgenv().Allow then
            return as(...)
        end
        return 
    end)
    if type(clonefunction) == 'function' then
    local ad
    ad = hookfunc(clonefunction, function(...)
        return 
    end)
    end
    local ag;
    ag = hookfunc(newcclosure, function(...)
        if getgenv().Allow then
            return ag(...)
        end
        return 
    end)

    getgenv().print = function(...)
        if getgenv().Allow then
            return AntiFunc["print"](...)
        end
        return AntiFunc["print"]('Ox01')
    end
    getgenv().warn = function(...)
        if getgenv().Allow then
            return AntiFunc["warn"](...)
        end
        return AntiFunc["warn"]('Ox02')
    end
    getgenv().rconsoleprint = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsoleprint"](...)
        end
        return AntiFunc["rconsoleprint"]('Ox03')
    end
    getgenv().rconsolewarn = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsolewarn"](...)
        end
        return AntiFunc["rconsolewarn"]('Ox04')
    end
    getgenv().rconsoleinfo = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsoleinfo"](...)
        end
        return AntiFunc["rconsoleinfo"]('Ox05')
    end
    getgenv().rconsoleinput = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsoleinput"](...)
        end
        return AntiFunc["rconsoleinput"]('Ox06')
    end
    getgenv().rconsoleinputasync = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsoleinputasync"](...)
        end
        return AntiFunc["rconsoleinputasync"]('Ox07')
    end
    getgenv().rconsoleerr = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsoleerr"](...)
        end
        return AntiFunc["rconsoleerr"]('Ox08')
    end
    getgenv().rconsolename = function(...)
        if getgenv().Allow then
            return AntiFunc["rconsolename"](...)
        end
        return AntiFunc["rconsolename"]('Ox09')
    end
    getgenv().replaceclosure = function(...)
        if getgenv().Allow then
            return AntiFunc["replaceclosure"](...)
        end
        return
    end
    getgenv().hookfunction = function(...)
        if getgenv().Allow then
            return AntiFunc["hookfunction"](...)
        end
        return 
    end
    getgenv().setreadonly = function(...)
        if getgenv().Allow then
            return AntiFunc["setreadonly"](...)
        end
        return 
    end
    if type(clonefunction) == 'function' then
    getgenv().clonefunction = function(...)
        return 
    end
    end
    getgenv().newcclosure = function(...)
        if getgenv().Allow then
            return AntiFunc["newcclosure"](...)
        end
        return
    end
    getgenv().hookfunc = function(...)
        if getgenv().Allow then
            return AntiFunc["hookfunc"](...)
        end
        return
    end        
end

getrenv()._G.handle_irregular = nil
getrenv()._G.cuasdamsndasdasd = nil

_G.cuasdamsndasdasd = function()
    return
end

_G.handle_irregular = function()
    return false
end

setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")

--Define Service 
local UIS = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local VIM =game:GetService("VirtualInputManager")
local ReplStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Imput = game:GetService("UserInputService")
local COREGUI = game:GetService("CoreGui")
local LP = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local RunS = game:GetService("RunService")
local X, Y = 0, 0
local Mouse = LP:GetMouse()
local GetLocalName = LP.Name
local request = (syn and syn.request) or (http and http.request) or http_request

local function Alive()
    if LP.Character then
       if LP.Character.HumanoidRootPart and LP.Character:FindFirstChild('Humanoid') then
          if LP.Character:FindFirstChild('Humanoid').Health > 0 then
             return true
          end
       end
    end
    return false
end
local GramxProjectFloat = tostring(math.random(0, 100000))
local TweenFloatVelocity = Vector3.new(0,0,0)
function CreateTweenFloat()
    local BV = LP.Character.HumanoidRootPart:FindFirstChild(GramxProjectFloat) or Instance.new("BodyVelocity")
    BV.Parent = LP.Character.HumanoidRootPart
    BV.Name = GramxProjectFloat
    BV.MaxForce = Vector3.new(100000, 100000, 100000)
    BV.Velocity = TweenFloatVelocity
end

local function GetDistance(Endpoint)
    if typeof(Endpoint) == "Instance" then
       Endpoint = Vector3.new(Endpoint.Position.X, LP.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    elseif typeof(Endpoint) == "CFrame" then
       Endpoint = Vector3.new(Endpoint.Position.X, LP.Character.HumanoidRootPart.Position.Y, Endpoint.Position.Z)
    end
    local Magnitude = (Endpoint - LP.Character.HumanoidRootPart.Position).Magnitude
    return Magnitude
end

function Tween(Endpoint)
    if typeof(Endpoint) == "Instance" then
       Endpoint = Endpoint.CFrame
    end
    local TweenFunc = {}
    local Distance = GetDistance(Endpoint)
    local TweenInfo = game:GetService("TweenService"):Create(LP.Character.HumanoidRootPart, TweenInfo.new(Distance/150, Enum.EasingStyle.Linear), {CFrame = Endpoint * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    TweenInfo:Play()
    function TweenFunc:Cancel()
       TweenInfo:Cancel()
       return false
    end
    if Distance <= 100 then
       LP.Character.HumanoidRootPart.CFrame = Endpoint
       TweenInfo:Cancel()
       return false
    end
    return TweenFunc
end

local function EquipWeapon(Mode)
    for i, v in pairs(LP.Backpack:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("SwordName") and Mode == "Sword" then
            LP.Character.Humanoid:EquipTool(v)
        elseif v:IsA("Tool") and v.Name:find("Combat") and Mode == 'Fist' then
            LP.Character.Humanoid:EquipTool(v)
        elseif v:IsA("Tool") and v.Name:find("Claws") and Mode == 'Claw' then
            LP.Character.Humanoid:EquipTool(v)
        end
    end
end

local function SkillBind(bind)
    pcall(function()
        VIM:SendKeyEvent(true,bind,false,game)
        task.wait()
        VIM:SendKeyEvent(false,bind,false,game)
        wait(.2)
    end)
end

local function GetHuman()
    local h = LP.Character
    h = h and (h:FindFirstChild("Humanoid") or h:FindFirstChildWhichIsA("Humanoid"))
    return h or workspace.CurrentCamera.CameraSubject
end

function nearestChests()
    local dist = math.huge
    local dekat = nil
    for i,v in pairs(game:GetService("Workspace").Debree:GetDescendants()) do
        if v:FindFirstChild("Drops") then
            if v.Name == "Loot_Chest" then
                for i,v1 in pairs(v:GetDescendants()) do
                    if v1.Name == "Root" then
                        local mag = (LP.Character.HumanoidRootPart.Position - v1.Position).magnitude
                        if mag < dist then
                            dist = mag
                            dekat = v1.Parent
                        end
                    end
                end
            end
        end
    end
    return dekat
end
--Put Enemy
if not getgenv().PutEnemies then
            spawn(function()
       getgenv().PutEnemies = true
       while game:GetService("RunService").RenderStepped:wait() do
          pcall(function()
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses["Water_Trainee"].Sabito:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses.ThunderTrainee.Zanegutsu:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses["Insect_Trainee"].Ouwbae:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses["Wind_Trainee"].Sanemi:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses.Arrow:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses["Reaper Boss"]:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses.Tamari:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses["Bomb_boss"]:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end 
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses.Water:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bandits.Zone2.Kaden:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bandits.Zone1.Boss:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   v.Parent = game:GetService("Workspace").Mobs
                end
             end
             for i, v in pairs(game:GetService("Workspace").Mobs.Bosses:GetChildren()) do
                wait()
                if v:FindFirstChild("Humanoid") ~= nil and v:IsA("Model") then
                   if v:FindFirstChild("Humanoid").Health <= 0 then
                      v:Destroy()
                   end
                end
             end
          end)
       end
    end)
end

local BossessTable = {"Sabito", "Susamaru", "Zanegutsu Kuuchie", "Yahaba", "Bandit Kaden", "Bandit Zoku", "Shiron", "Nezuko", "Slasher", "Giyu", "Sanemi"}
local bosCFTable = {
    Susamaru = CFrame.new(1415.65686, 315.908813, -4571.56445, 0.546769679, 9.56999102e-08, -0.837283075, -3.89699188e-08, 1, 8.88496885e-08, 0.837283075, -1.59514606e-08, 0.546769679),
    Sabito = CFrame.new(1257.60046, 275.351685, -2834.26611, -0.999906898, 0, 0.0136531433, 0, 1, 0, -0.0136531433, 0, -0.999906898),
    ["Zanegutsu Kuuchie"] = CFrame.new(-336.3461, 425.857422, -2271.75513, -0.698250651, 1.51218398e-08, 0.715853333, -2.08847464e-08, 1, -4.1495408e-08, -0.715853333, -4.39246115e-08, -0.698250651),
    Yahaba = CFrame.new(1415.65686, 315.908813, -4571.56445, 0.546769679, 9.56999102e-08, -0.837283075, -3.89699188e-08, 1, 8.88496885e-08, 0.837283075, -1.59514606e-08, 0.546769679),
    ["Bandit Kaden"] = CFrame.new(-569.584351, 304.46698, -2827.55371, 0.480675608, -1.73434103e-08, 0.876898468, 1.14556499e-07, 1, -4.30165024e-08, -0.876898468, 1.21131407e-07, 0.480675608),
    Shiron = CFrame.new(3203.10229, 370.884155, -3953.36035, 0.839348018, 3.06273158e-08, -0.54359442, -9.09106301e-09, 1, 4.23049826e-08, 0.54359442, -3.05667527e-08, 0.839348018),
    Nezuko = CFrame.new(3549.86816, 342.214478, -4595.73145, 0.869256139, 6.38721716e-08, -0.494362026, -6.77404373e-08, 1, 1.00905426e-08, 0.494362026, 2.47170338e-08, 0.869256139),
    ["Bandit Zoku"] = CFrame.new(174.656708, 283.257355, -1969.98572, -0.814278841, -6.32300328e-08, 0.5804739, -9.84254598e-08, 1, -2.91412618e-08, -0.5804739, -8.08625273e-08, -0.814278841),
    Slasher =  CFrame.new(4355.59082, 342.214478, -4386.90527, -0.943093359, 9.45450722e-08, -0.332528085, 7.62970487e-08, 1, 6.79336054e-08, 0.332528085, 3.86968253e-08, -0.943093359),
    Giyu = CFrame.new(3013.30884, 316.95871, -2916.32202, 0.76092875, 3.55993954e-08, 0.648835421, -1.75982926e-08, 1, -3.4228016e-08, -0.648835421, 1.46266848e-08, 0.76092875),
    Sanemi = CFrame.new(1619.91357, 348.461884, -3717.00464, 0.995524168, -1.20393835e-07, 0.0945073739, 1.19773844e-07, 1, 1.22327712e-08, -0.0945073739, -8.58508931e-10, 0.995524168)
}

local questCFTable = {
    ["Zuko's Subordinates [Lvl.0+]"] = CFrame.new(140.61853, 283.107788, -1707.46887, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247),
    ["Sakurai Demons [Lvl.10+]"] = CFrame.new(73.0343018, 275.944611, -2460.53027, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    ["Kaden's Subordinates [Lvl.20+]"] = CFrame.new(-462.987915, 275.575958, -3017.73633, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Wagon"] = CFrame.new(223.232788, 283.380402, -1605.61755, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
}

local mobCFTable = {
    ["Zuko's Subordinate"] = CFrame.new(73.3752365, 283.25769, -1859.00671, 0.296427846, -1.8072237e-08, 0.955055237, 2.47266314e-08, 1, 1.12481189e-08, -0.955055237, 2.02810426e-08, 0.296427846),
    ["Sakurai Demon"] = CFrame.new(-401.027405, 275.869537, -2542.17676, 0.0441199318, 9.02881752e-08, 0.999026239, 6.52246825e-08, 1, -9.32566948e-08, -0.999026239, 6.92756501e-08, 0.0441199318),
    ["Kaden's Subordinate"] = CFrame.new(-389.573334, 275.425903, -2912.25073, -0.991596818, -2.01847516e-08, -0.129366696, -1.01121769e-08, 1, -7.85175018e-08, 0.129366696, -7.65495258e-08, -0.991596818)
}

local TrainersCF = {
    ["Water Trainer"] = CFrame.new(705.209229, 261.426819, -2409.51587, -0.566798735, -5.48522401e-08, -0.641887605, -7.38932258e-08, 1, 2.8182352e-09, 0.641887605, 4.95921633e-08, -0.566798735),
    ["Insect Trainer"] = CFrame.new(2873.81177, 316.95871, -3917.9397, 0.40715313, 4.81208531e-08, 0.91335988, -8.85969982e-08, 1, -1.31911939e-08, -0.91335988, -7.55501048e-08, 0.40715313),
    ["Thunder Trainer"] = CFrame.new(-322.369507, 426.857788, -2384.4021, 0.361198723, -4.49157973e-08, -0.932488859, 1.14233451e-07, 1, -3.91942434e-09, 0.932488859, -1.05105727e-07, 0.361198723),
    ["Wind Trainer"] = CFrame.new(1792.31458, 334.338989, -3521.31104, 0.862527311, -5.19402583e-08, -0.506010473, 8.30083167e-08, 1, 3.88463874e-08, 0.506010473, -7.55091492e-08, 0.862527311)
}

local Villages = {
    ["Zapiwara Mountain"] = CFrame.new(-365.617981, 425.857422, -2303.92285, -0.351566792, -6.70503529e-13, 0.93616277, 9.77098068e-13, 1, 1.08316502e-12, -0.93616277, 1.2955277e-12, -0.351566792),
    ["Waroru Cave"] = CFrame.new(683.164062, 261.426819, -2401.41797, 0.137014925, -3.46316149e-08, 0.990568995, 6.38769482e-09, 1, 3.4077793e-08, -0.990568995, 1.65828595e-09, 0.137014925),
    ["Slasher Demon"] = CFrame.new(-485.866608, 274.511871, -3314.98169, -0.79503566, -1.09233929e-08, -0.606562674, 1.19430055e-09, 1, -1.95740775e-08, 0.606562674, -1.62865081e-08, -0.79503566),
    ["Ushumaru Village"] = CFrame.new(-90.0373688, 354.723511, -3170.00439, 0.817297578, -1.0121405e-08, 0.576215804, 3.12666586e-08, 1, -2.6782951e-08, -0.576215804, 3.99059843e-08, 0.817297578),
    ["Ouwbayashi Home"] = CFrame.new(1593.49072, 315.983917, -4618.15088, -0.795035839, -1.09234e-08, -0.606562734, 1.19429622e-09, 1, -1.95740828e-08, 0.606562734, -1.62865081e-08, -0.795035839),
    ["Kabiwaru Village"] = CFrame.new(2037.20203, 315.908813, -2956.77539, -0.795035839, -1.09234e-08, -0.606562734, 1.19429622e-09, 1, -1.95740828e-08, 0.606562734, -1.62865081e-08, -0.795035839),
    ["Zapiwara Cave"] = CFrame.new(-8.2838707, 275.944641, -2414.72607, -0.795035779, -1.09233964e-08, -0.606562555, 1.19429289e-09, 1, -1.95740775e-08, 0.606562555, -1.62865046e-08, -0.795035779),
    ["Dangerous Woods"] = CFrame.new(4061.43677, 342.289581, -3928.90332, -0.795035839, -1.09233973e-08, -0.606562614, 1.19429444e-09, 1, -1.95740775e-08, 0.606562614, -1.62865064e-08, -0.795035839),
    ["Final Selection"] = CFrame.new(5200.76709, 365.949982, -2425.61646, -0.795035779, -1.09233964e-08, -0.606562555, 1.19429289e-09, 1, -1.95740775e-08, 0.606562555, -1.62865046e-08, -0.795035779),
    ["Kiribating Village"] = CFrame.new(-40.3280869, 282.282745, -1623.75159, -0.795035839, -1.09233991e-08, -0.606562614, 1.19429266e-09, 1, -1.95740792e-08, 0.606562614, -1.62865046e-08, -0.795035839),
    ["Butterfly Mansion"] = CFrame.new(3022.90869, 316.075623, -3928.17261, -0.795035779, -1.09233982e-08, -0.606562555, 1.19429144e-09, 1, -1.95740775e-08, 0.606562555, -1.62865046e-08, -0.795035779),
    ["Abubu Cave"] = CFrame.new(1044.44873, 276.190704, -3483.0647, -0.795035839, -1.09233991e-08, -0.606562614, 1.19429266e-09, 1, -1.95740792e-08, 0.606562614, -1.62865046e-08, -0.795035839),
}


--	end
--end)
local invTable = {}
getgenv().Allow = false

getgenv().Allow = true
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({

    Title = 'Project Slayers OPEN SOURCE',
    Center = true, 
    AutoShow = true,
})
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/naypramx/Ui__Project/Script/XeNonUi", true))()
    library:CreateWatermark("{fps} | Project Slayers OPEN SOURCE") 




local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'), 
	Esp = Window:AddTab('ESP'), 
   -- ['UI Settings'] = Window:AddTab('UI Settings'),
}
--local GeneralL = Tabs.Main:AddLeftTabbox()
local GeneralFM = Tabs.Main:AddLeftTabbox()
local GeneralFB = Tabs.Main:AddLeftTabbox()
local GeneralSL = Tabs.Main:AddLeftTabbox()
local GeneralR = Tabs.Main:AddRightTabbox()
local GeneralMSC = Tabs.Main:AddRightTabbox()
local GeneralTP = Tabs.Main:AddRightTabbox()
local GeneralESP = Tabs.Esp:AddLeftTabbox()
local GeneralMISC = Tabs.Main:AddLeftTabbox()
--local qSec = GeneralL:AddTab('Farming Quests')
local mSec = GeneralFM:AddTab('Farming Mobs')
local bSec = GeneralFB:AddTab('Farming Boss')
local slSec = GeneralSL:AddTab('Settings Farm')
local pSec = GeneralR:AddTab('Players')
local misSec = GeneralMSC:AddTab('Misc')
local tpSec = GeneralTP:AddTab('Teleports')
local espsec = GeneralESP:AddTab('ESP')
local miscsec = GeneralMISC:AddTab('Misc')

local antifall
local antifall1
local antifall2
local antifall3
local antifall4
local antifall5

local Esp = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/x114/RobloxScripts/main/OpenSourceEsp"))()

miscsec:AddButton('Inf Levels (Client-Sided)', function()
while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.Menu.Bars["Exp_Text"]["Exp_Max"].Text = 9999999

game:GetService("Players").LocalPlayer.PlayerGui.Menu.Bars["Exp_Text"].Text = 999999999

game:GetService("Players").LocalPlayer.PlayerGui.Menu.Bars["Level_text"].Text = 100
game:GetService("Players").LocalPlayer.PlayerGui.Menu.Bars["Level_text_background"].Text = 100


end
end)

espsec:AddToggle('enablesp', {
    Text = 'Enable Box',
    Default = false, -- Default value (true / false)
    Tooltip = 'Enable The Box ESP', -- Information shown when you hover over the toggle
})

espsec:AddToggle('boxoutline', {
    Text = 'Enable Box Outline?',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

espsec:AddToggle('healthbar', {
    Text = 'Enable Health Bar',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

espsec:AddDropdown('selectside', {
    Values = {"Left", "Bottom", "Bottom"},
    Default = "Left", -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select BarSide',
    Tooltip = false, -- Information shown when you hover over the textbox
})


  fonts = {
        "Legacy",
        "Arial",
        "ArialBold",
        "SourceSans",
        "SourceSansBold",
        "SourceSansSemibold",
        "SourceSansLight",
        "SourceSansItalic",
        "Bodoni",
        "Garamond",
        "Cartoon",
        "Code",
        "Highway",
        "SciFi",
        "Arcade",
        "Fantasy",
        "Antique",
        "Gotham",
        "GothamSemibold",
        "GothamBold",
        "GothamBlack",
        "AmaticSC",
        "Bangers",
        "Creepster",
        "DenkOne",
        "Fondamento",
        "FredokaOne",
        "GrenzeGotisch",
        "IndieFlower",
        "JosefinSans",
        "Jura",
        "Kalam",
        "LuckiestGuy",
        "Merriweather",
        "Michroma",
        "Nunito",
        "Oswald",
        "PatrickHand",
        "PermanentMarker",
        "Roboto",
        "RobotoCondensed",
        "RobotoMono",
        "Sarpanch",
        "SpecialElite",
        "TitilliumWeb",
        "Ubuntu"
    }

espsec:AddDropdown('font', {
    Values = {"0","1","2","3"}, --{"Plex", "Monospace", "System","UI"}
    Default = "1", -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Font',
    Tooltip = false, -- Information shown when you hover over the textbox
})

espsec:AddToggle('names', {
    Text = 'Names',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

espsec:AddToggle('demon', {
    Text = 'Demon Flowers',
    Default = false, -- Default value (true / false)
    Tooltip = "For The Mission To Virate Oni", -- Information shown when you hover over the toggle
})


--[[
espsec:AddToggle('tools', {
    Text = 'Show Tools',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})
]]

--local PlayerDrawings = {}

local branco = Color3.fromRGB(255,255,255)

Toggles.demon:OnChanged(function()
for __,v in pairs(game.Workspace.Demon_Flowers_Spawn:GetChildren()) do
if v:IsA("Model") or v:IsA("Part") or v:IsA("MeshPart") then
local a = Instance.new("BillboardGui",v)
a.Size = UDim2.new(1,0, 1,0)
a.Name = "A"
a.AlwaysOnTop = true
local b = Instance.new("Frame",a)
b.Size = UDim2.new(1,0, 1,0)
b.BackgroundTransparency = 1
b.BorderSizePixel = 0
local c = Instance.new("TextLabel",b)
c.Text = v.Name
c.Size = UDim2.new(1,0, 1,0)
c.BackgroundTransparency = 1
c.BorderSizePixel = 0
end
end
  print('Demon Flower : ', Toggles.demon.Value)
end)

Toggles.names:OnChanged(function()
      Esp.Names = Toggles.names.Value
Esp.NamesColor = Color3.fromRGB(255,255,255)
Esp.NamesOutline = true
Esp.NamesFont = Options.font.Value
Esp.NamesSize = 18
  print('Names : ', Toggles.names.Value)
end)
--[[
Toggles.tools:OnChanged(function()
         
				    local Equipped = Player.Character:FindFirstChildOfClass("Tool") and Player.Character:FindFirstChildOfClass("Tool").Name or "None"
                 --   Equipped = SurroundString(Equipped)
                    Tool.Text = Equipped
                    Tool.Position = Vector2.new(BoxSize.X/2 + BoxPos.X, BottomOffset)
                    Tool.Color = branco
                    Tool.Font = Options.font.Value
                    Tool.Visible = Toggles.tools.Value
                    BottomOffset = BottomOffset + 15
  print('Tools : ', Toggles.tools.Value)
end)
]]
Toggles.enablesp:OnChanged(function()
--// Made by Blissful#4992
--// Locals:
local workspace = game:GetService("Workspace")
local player = game:GetService("Players").LocalPlayer
local camera = workspace.CurrentCamera

--// Settings:
local on = true -- Use this if your making gui

local Box_Color = branco
local Box_Thickness = 2
local Box_Transparency = 0.5 -- 1 Visible, 0 Not Visible

local Tracers = false
local Tracer_Color = Color3.fromRGB(255, 0, 0)
local Tracer_Thickness = 2
local Tracer_Transparency = 1 -- 1 Visible, 0 Not Visible

local Autothickness = true -- Makes screen less encumbered

local Team_Check = false
local red = Color3.fromRGB(227, 52, 52)
local green = Color3.fromRGB(88, 217, 24)

local function NewLine()
    local line = Drawing.new("Line")
    line.Visible = false
    line.From = Vector2.new(0, 0)
    line.To = Vector2.new(1, 1)
    line.Color = Box_Color
    line.Thickness = Box_Thickness
    line.Transparency = Box_Transparency
    return line
end

--// Main Function:
for i, v in pairs(game.Players:GetChildren()) do
    --// Lines for 3D box (12)
    local lines = {
        line1 = NewLine(),
        line2 = NewLine(),
        line3 = NewLine(),
        line4 = NewLine(),
        line5 = NewLine(),
        line6 = NewLine(),
        line7 = NewLine(),
        line8 = NewLine(),
        line9 = NewLine(),
        line10 = NewLine(),
        line11 = NewLine(),
        line12 = NewLine(),
        Tracer = NewLine()
    }

    lines.Tracer.Color = Tracer_Color
    lines.Tracer.Thickness = Tracer_Thickness
    lines.Tracer.Transparency = Tracer_Transparency

    --// Updates ESP (lines) in render loop
    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if on and v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= player.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if vis then
                    local Scale = v.Character.Head.Size.Y/2
                    local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                    local Top1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                    local Top2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                    local Top3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                    local Top4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

                    --// Top:
                    lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                    lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                    lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                    lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                    lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                    lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                    --// Bottom:
                    lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                    lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                    lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                    lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

                    --//S ides:
                    lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                    lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line12.To = Vector2.new(Top4.X, Top4.Y)

                    --// Tracer:
                    if Tracers then
                        local trace = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)

                        lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
                        lines.Tracer.To = Vector2.new(trace.X, trace.Y)
                    end

                    --// Teamcheck:
                    if Team_Check then
                        if v.TeamColor == player.TeamColor then
                            for u, x in pairs(lines) do
                                x.Color = green
                            end
                        else 
                            for u, x in pairs(lines) do
                                x.Color = red
                            end
                        end
                    end

                    --// Autothickness:
                    if Autothickness then
                        local distance = (player.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                        local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(lines) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(lines) do
                            x.Thickness = Box_Thickness
                        end
                    end

                    for u, x in pairs(lines) do
                        if x ~= lines.Tracer then
                            x.Visible = true
                        end
                    end
                    if Tracers then
                        lines.Tracer.Visible = true
                    end
                else 
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(lines) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(v.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end

game.Players.PlayerAdded:Connect(function(newplr)
    --// Lines for 3D box (12)
    local lines = {
        line1 = NewLine(),
        line2 = NewLine(),
        line3 = NewLine(),
        line4 = NewLine(),
        line5 = NewLine(),
        line6 = NewLine(),
        line7 = NewLine(),
        line8 = NewLine(),
        line9 = NewLine(),
        line10 = NewLine(),
        line11 = NewLine(),
        line12 = NewLine(),
        Tracer = NewLine()
    }

    lines.Tracer.Color = Tracer_Color
    lines.Tracer.Thickness = Tracer_Thickness
    lines.Tracer.Transparency = Tracer_Transparency

    --// Updates ESP (lines) in render loop
    local function ESP()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if on and newplr.Character ~= nil and newplr.Character:FindFirstChild("Humanoid") ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= player.Name and newplr.Character.Humanoid.Health > 0 and newplr.Character:FindFirstChild("Head") ~= nil then
                local pos, vis = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                if vis then
                    local Scale = newplr.Character.Head.Size.Y/2
                    local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

                    local Top1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
                    local Top2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
                    local Top3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
                    local Top4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

                    local Bottom1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
                    local Bottom2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
                    local Bottom3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
                    local Bottom4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

                    --// Top:
                    lines.line1.From = Vector2.new(Top1.X, Top1.Y)
                    lines.line1.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line2.From = Vector2.new(Top2.X, Top2.Y)
                    lines.line2.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line3.From = Vector2.new(Top3.X, Top3.Y)
                    lines.line3.To = Vector2.new(Top4.X, Top4.Y)

                    lines.line4.From = Vector2.new(Top4.X, Top4.Y)
                    lines.line4.To = Vector2.new(Top1.X, Top1.Y)

                    --// Bottom:
                    lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

                    lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

                    lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

                    lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

                    --//S ides:
                    lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
                    lines.line9.To = Vector2.new(Top1.X, Top1.Y)

                    lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
                    lines.line10.To = Vector2.new(Top2.X, Top2.Y)

                    lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
                    lines.line11.To = Vector2.new(Top3.X, Top3.Y)

                    lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
                    lines.line12.To = Vector2.new(Top4.X, Top4.Y)

                    --// Tracer:
                    if Tracers then
                        local trace = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)
                        lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
                        lines.Tracer.To = Vector2.new(trace.X, trace.Y)
                    end

                    --// Teamcheck:
                    if Team_Check then
                        if newplr.TeamColor == player.TeamColor then
                            for u, x in pairs(lines) do
                                x.Color = green
                            end
                        else 
                            for u, x in pairs(lines) do
                                x.Color = red
                            end
                        end
                    end

                    --// Autothickness:
                    if Autothickness then
                        local distance = (player.Character.HumanoidRootPart.Position - newplr.Character.HumanoidRootPart.Position).magnitude
                        local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
                        for u, x in pairs(lines) do
                            x.Thickness = value
                        end
                    else 
                        for u, x in pairs(lines) do
                            x.Thickness = Box_Thickness
                        end
                    end

                    for u, x in pairs(lines) do
                        if x ~= lines.Tracer then
                            x.Visible = true
                        end
                    end
                    if Tracers then
                        lines.Tracer.Visible = true
                    end
                else 
                    for u, x in pairs(lines) do
                        x.Visible = false
                    end
                end
            else 
                for u, x in pairs(lines) do
                    x.Visible = false
                end
                if game.Players:FindFirstChild(newplr.Name) == nil then
                    connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(ESP)()
end)
 print('Box Esp : ', Toggles.enablesp.Value)
 -- print('Box Esp Outline : ', Toggles.boxoutiline.Value)
end)

Toggles.healthbar:OnChanged(function()
      Esp.HealthBar = Toggles.healthbar.Value
Esp.HealthBarSide = Options.selectside.Value -- Left,Bottom,Right
 print('Selected HealthSide : ', Options.selectside.Value)
end)



mSec:AddDropdown('QuestDropdown', {
    Values = {"Zuko's Subordinates [Lvl.0+]", "Sakurai Demons [Lvl.10+]", "Kaden's Subordinates [Lvl.20+]", "Wagon"},
    Default = nil, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Quest',
    Tooltip = false, -- Information shown when you hover over the textbox
})

Options.QuestDropdown:OnChanged(function()
    getgenv().SelectedQuest = Options.QuestDropdown.Value
    print('Selected Quest : ', Options.QuestDropdown.Value)
end)

mSec:AddToggle('ToggleQuest', {
    Text = 'Auto Quest',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.ToggleQuest:OnChanged(function()
    getgenv().FarmQuest = Toggles.ToggleQuest.Value
    print('Auto Quests : ', Toggles.ToggleQuest.Value)
end)

mSec:AddDropdown('MobsDropdown', {
    Values = {"Zoku's Subordinate", "Sakurai Demon", "Kaden's Subordinate"},
    Default = nil, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Mob',
    Tooltip = false, -- Information shown when you hover over the textbox
})

Options.MobsDropdown:OnChanged(function()
    getgenv().SelectedMob = Options.MobsDropdown.Value
    print('Selected Mobs : ', Options.QuestDropdown.Value)
end)

mSec:AddToggle('KillMobToggle', {
    Text = 'Auto Kill Mob',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.KillMobToggle:OnChanged(function()
    getgenv().FarmMob = Toggles.KillMobToggle.Value
    print('Auto Kill Mob : ', Toggles.KillMobToggle.Value)
end)

bSec:AddDropdown('BossDropdown', {
    Values = BossessTable,
    Default = nil, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Boss',
    Tooltip = false, -- Information shown when you hover over the textbox
})

Options.BossDropdown:OnChanged(function()
    getgenv().SelectedBoss = Options.BossDropdown.Value
    print('Selected Boss : ', Options.BossDropdown.Value)
end)

bSec:AddToggle('FarmBossToggle', {
    Text = 'Auto Farm Boss',
    Default = false,
    Tooltip = false,
})

Toggles.FarmBossToggle:OnChanged(function()
    getgenv().FarmBoss = Toggles.FarmBossToggle.Value
    print('Auto Farm Boss : ', Toggles.FarmBossToggle.Value)
end)

bSec:AddToggle('FarmAllBossToggle', {
    Text = 'Auto Farm All Boss',
    Default = false,
    Tooltip = false,
})

Toggles.FarmAllBossToggle:OnChanged(function()
    getgenv().FarmAllBoss = Toggles.FarmAllBossToggle.Value
    print('Auto Farm All Boss : ', Toggles.FarmAllBossToggle.Value)
end)

bSec:AddToggle('CChestToggle', {
    Text = 'Auto Collect Chest',
    Default = false,
    Tooltip = false,
})

Toggles.CChestToggle:OnChanged(function()
    getgenv().AutoCollectChest = Toggles.CChestToggle.Value
    print('Auto Collect Chest : ', Toggles.CChestToggle.Value)
end)

slSec:AddDropdown('ModesDropdown', {
    Values = {"Above", "Below"},
    Default = 'Above',
    Multi = false,

    Text = 'Farm Mode',
    Tooltip = false,
})

Options.ModesDropdown:OnChanged(function(state)
    getgenv().FarmMode = Options.ModesDropdown.Value
    print('Selected Farm Mode : ', Options.ModesDropdown.Value)
end)

slSec:AddDropdown('CModesDropdown', {
    Values = {"Fist", "Sword", "Claw"},
    Default = 'Fist',
    Multi = false,

    Text = 'Combat Mode',
    Tooltip = false,
})

Options.CModesDropdown:OnChanged(function(state)
    getgenv().CombatMode = Options.CModesDropdown.Value
    print('Selected Combat Mode : ', Options.CModesDropdown.Value)
end)

slSec:AddSlider('DisSlider', {
    Text = 'Distance Farm',
    Default = 6,
    Min = 1,
    Max = 10,
    Rounding = 1,
})

local Number = Options.DisSlider.Value
Options.DisSlider:OnChanged(function()
    getgenv().Dis = Options.DisSlider.Value
    print('"Distance Farm : ', Number)
end)

slSec:AddToggle('EquipToggle', {
    Text = 'Auto Equip',
    Default = true, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})
Toggles.EquipToggle:OnChanged(function()
    getgenv().AutoEquip = Toggles.EquipToggle.Value
    print('Kill Aura : ', Toggles.EquipToggle.Value)
end)

slSec:AddToggle('KAuraToggle', {
    Text = 'Kill Aura',
    Default = true, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.KAuraToggle:OnChanged(function()
    getgenv().KillAura = Toggles.KAuraToggle.Value
    print('Kill Aura : ', Toggles.KAuraToggle.Value)
end)

slSec:AddToggle('KnockToggle', {
    Text = 'Auto Knock When Farm',
    Default = false, -- Default value (true / false)
    Tooltip = 'This Function Make hitting when your farm is more efficient\nbut cant use breathing skills!', -- Information shown when you hover over the toggle
})

Toggles.KnockToggle:OnChanged(function()
    getgenv().AutoKnock = Toggles.KnockToggle.Value
    print('Auto Knock : ', Toggles.KnockToggle.Value)
end)

local BreathProg = pSec:AddLabel('Breathing Progress : '..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[1].Value.."/"..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[2].Value)
local DemonProg = pSec:AddLabel('Demon Progress : '..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[1].Value.."/"..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[2].Value)

local function DemonProgressRefresh()
    DemonProg:SetText("Demon Progress : "..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[1].Value.."/"..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[2].Value)
end
game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].DemonProgress[1].Changed:Connect(DemonProgressRefresh)
local function BreathingProgressRefresh()
    BreathProg:SetText("Breathing Progress : "..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[1].Value.."/"..game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[2].Value)
end
game:GetService("ReplicatedStorage")["Player_Data"][game.Players.LocalPlayer.Name].BreathingProgress[1].Changed:Connect(BreathingProgressRefresh)
pSec:AddDivider()
pSec:AddSlider('walkSlider', {
    Text = 'Walk-Speed',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 16,
    Min = 1,
    Max = 200,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})

Options.walkSlider:OnChanged(function()
    getgenv().WalkSpeedValue = Options.walkSlider.Value
    print('Walk Speed : ', Options.walkSlider.Value)
end)

pSec:AddSlider('jumpSlider', {
    Text = 'Jump-Power',

    Default = 50,
    Min = 1,
    Max = 200,
    Rounding = 1,

    Compact = false,
})

Options.jumpSlider:OnChanged(function()
    getgenv().JumpPowerValue = Options.jumpSlider.Value
    print('Jump Power : ', Options.jumpSlider.Value)
end)

pSec:AddToggle('WalkSpeedToggle', {
    Text = 'WalkSpeed Enabled',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.WalkSpeedToggle:OnChanged(function()
    getgenv().WalksSpeedEnabled = Toggles.WalkSpeedToggle.Value
    print('WalkSpeed Enabled : ', Toggles.WalkSpeedToggle.Value)
end)

pSec:AddToggle('JumpPowerToggle', {
    Text = 'JumpPower Enabled',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.JumpPowerToggle:OnChanged(function()
    getgenv().JumpPowerEnabled = Toggles.JumpPowerToggle.Value
    print('WalkSpeed Enabled : ', Toggles.JumpPowerToggle.Value)
end)

spawn(function()
    while task.wait() do
        if getgenv().WalksSpeedEnabled then
            local h = GetHuman()
            local oldws = h and h.WalkSpeed
            if oldws then
                pcall(function()
                    h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
                    while task.wait() and getgenv().WalksSpeedEnabled do
                        h.WalkSpeed = getgenv().WalkSpeedValue or oldws or 16
                    end
                end)
                h.WalkSpeed = oldws or 16
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if getgenv().JumpPowerEnabled then
            local h = GetHuman()
            local oldjp = h and h.JumpPower
            if oldjp then
                pcall(function()
                    h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
                    while task.wait() and getgenv().JumpPowerEnabled do
                        h.JumpPower = getgenv().JumpPowerValue or oldjp or 50
                    end
                end)
                h.JumpPower = oldjp or 50
            end
        end
    end
end)

misSec:AddToggle('InfStamToggle', {
    Text = 'Infinite Stamina',
    Default = false, -- Default value (true / false)
    Tooltip = "This Function Make Your Stamina Infinity!", -- Information shown when you hover over the toggle
})

Toggles.InfStamToggle:OnChanged(function()
    getgenv().InfS = Toggles.InfStamToggle.Value
    print('Infinite Stamina : ', Toggles.InfStamToggle.Value)
end)

misSec:AddToggle('InfBreathToggle', {
    
    Text = 'Infinite Breath',
    Default = false, -- Default value (true / false)
    Tooltip = "This Function Make Your Breath Infinity!", -- Information shown when you hover over the toggle
})

Toggles.InfBreathToggle:OnChanged(function()
    getgenv().InfB = Toggles.InfBreathToggle.Value
    print('Infinite Breath : ', Toggles.InfBreathToggle.Value)
end)

misSec:AddToggle('AntiSunToggle', {
    Text = 'Anti Sun Damage',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.AntiSunToggle:OnChanged(function()
    print('Anti Sun Damage : ', Toggles.AntiSunToggle.Value)
end)

misSec:AddDropdown('SkillDropdown', {
    -- Default is the numeric index (e.g. "This" would be 1 since it if first in the values list)
    -- Default also accepts a string as well

    -- Currently you can not set multiple values with a dropdown

    Values = { 'Z', 'X', 'C', 'V', 'B', 'N' },
    Default = 1, 
    Multi = true, -- true / false, allows multiple choices to be selected

    Text = 'Select Skill',
    Tooltip = false, -- Information shown when you hover over the textbox
})

Options.SkillDropdown:OnChanged(function()
    -- print('Dropdown got changed. New value:', )
    print('Skill select got changed:')
    for key, value in next, Options.SkillDropdown.Value do
        print(key, value) -- should print something like This, true
    end
end)

Options.SkillDropdown:SetValue({
    Z = true,
    X = true,
    C = true,
    V = true,
    B = true,
    N = true,
})

misSec:AddToggle('SkillToggle', {
    Text = 'Auto Use Skills',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.SkillToggle:OnChanged(function()
    getgenv().AutoUseSkills = Toggles.SkillToggle.Value
    print('Auto Skills : ', Toggles.SkillToggle.Value)
end)


tpSec:AddDropdown('TPTrainer', {
    Values =     
    {
        "Wind Trainer",
        "Thunder Trainer",
        "Water Trainer",
        "Insect Trainer"
    },
    Default = nil, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Trainers',
    Tooltip = false, -- Information shown when you hover over the textbox
})

Options.TPTrainer:OnChanged(function()
    getgenv().TrainerSelected = Options.TPTrainer.Value
    print('Selected Trainer : ', Options.TPTrainer.Value)
end)

tpSec:AddToggle('TPTrainToggle', {
    Text = 'TP to Trainer',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.TPTrainToggle:OnChanged(function()
    getgenv().TPtoTrainer = Toggles.TPTrainToggle.Value
    print('TP to Trainer : ', Toggles.TPTrainToggle.Value)
end)


tpSec:AddDropdown('TPVillage', {
    Values =     
    {
        "Zapiwara Mountain",
        "Waroru Cave",
        "Slasher Demon",
        "Ushumaru Village",
        "Ouwbayashi Home",
        "Kabiwaru Village",
        "Zapiwara Cave",
        "Dangerous Woods",
        "Final Selection",
        "Kiribating Village",
        "Butterfly Mansion",
        "Abubu Cave",
        "Muzan"

    },
    Default = nil, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Select Area',
    Tooltip = false, -- Information shown when you hover over the textbox
})

Options.TPVillage:OnChanged(function(state)
    getgenv().AreaSelected = Options.TPVillage.Value
    print('Selected Area : ', Options.TPVillage.Value)
end)

tpSec:AddToggle('TPVillageToggle', {
    Text = 'TP to Villages',
    Default = false, -- Default value (true / false)
    Tooltip = false, -- Information shown when you hover over the toggle
})

Toggles.TPVillageToggle:OnChanged(function()
    getgenv().TPtoVillage = Toggles.TPVillageToggle.Value
    print('TP to Trainer : ', Toggles.TPVillageToggle.Value)
end)


spawn(function()
    while task.wait() do
        pcall(function()
            if TPtoTrainer then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall4 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall4.Velocity = Vector3.new(0, 0, 0)
                    antifall4.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    repeat task.wait()
                        if GetDistance(TrainersCF[TrainerSelected]) < 15 and GetDistance(TrainersCF[TrainerSelected]) < 150 then
                            if TweenFa then
                                TweenFa:Cancel()
                                wait(.1)
                                end
                                LP.Character.HumanoidRootPart.CFrame = TrainersCF[TrainerSelected]
                        else
                            TweenFa = Tween(TrainersCF[TrainerSelected])
                        end
                    until not TPtoTrainer
                end
            else
                antifall4:Destroy()
            end
            if TPtoVillage then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall5 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall5.Velocity = Vector3.new(0, 0, 0)
                    antifall5.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    repeat task.wait()
                        if GetDistance(Villages[AreaSelected]) < 15 and GetDistance(Villages[AreaSelected]) < 150 then
                            if TweenFa then
                                TweenFa:Cancel()
                                wait(.1)
                                end
                                LP.Character.HumanoidRootPart.CFrame = Villages[AreaSelected]
                        else
                            TweenFa = Tween(Villages[AreaSelected])
                        end
                    until not TPtoVillage
                end
            else
                antifall5:Destroy()
            end
        end)
    end
end)

--[[
-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 

-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])
]]
-- You can use the SaveManager:LoadAutoloadConfig() to load a config 
-- which has been marked to be one that auto loads!

spawn(function()
    while task.wait() do
        pcall(function()
            if FarmQuest then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall1 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall1.Velocity = Vector3.new(0, 0, 0)
                    antifall1.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    if SelectedQuest == 'Wagon' then
                        Tween(questCFTable[SelectedQuest])
                        if LP.Character.HumanoidRootPart.CFrame.X == questCFTable[SelectedQuest].X and LP.Character.HumanoidRootPart.CFrame.Z == questCFTable[SelectedQuest].Z and getrenv()._G.CheckQuestNoCooldown() == true then
                            local QuestWagon = {
                                ["List"] = {
                                    [1] = {
                                        ["Name"] = "Deliver wagon",
                                        ["Progress"] = {
                                            [1] = 0,
                                            [2] = 1
                                        }
                                    }
                                },
                                ["Current"] = "Deliver grandpa Wagwon's wagon"
                            }
                            game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("AddQuest", "Players."..game.Players.LocalPlayer.Name .. ".PlayerGui.Npc_Dialogue.LocalScript.Functions", 84732.8527069, game:GetService("ReplicatedStorage").Player_Data[game.Players.LocalPlayer.Name].Quest, QuestWagon)
                        elseif LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("addgrandpawagowon") and getrenv()._G.CheckQuestNoCooldown() ~= true and LP.Character[LP.Name.."'s"..' Wagon'] then
                            if LP.Character[LP.Name.."'s"..' Wagon'] then
                                Tween(CFrame.new(450, 275, -2674) + Vector3.new(0, 0, 0))
                                wait(1)
                            end
                        end
                    elseif SelectedQuest == "Zuko's Subordinates [Lvl.0+]" then
                        if not LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("dangerasdasd") and getrenv()._G.CheckQuestNoCooldown() == true then
                            Tween(questCFTable[SelectedQuest])
                            if LP.Character.HumanoidRootPart.CFrame.X == questCFTable[SelectedQuest].X and LP.Character.HumanoidRootPart.CFrame.Z == questCFTable[SelectedQuest].Z then
                                local args = {
                                    [1] = "AddQuest",
                                    [2] = "Players."..LP.Name.."PlayerGui.Npc_Dialogue.LocalScript.Functions",
                                    [3] = 5609.780621699364,
                                    [4] = game:GetService("ReplicatedStorage").Player_Data[LP.Name].Quest,
                                    [5] = {
                                        ["List"] = {
                                            [1] = {
                                                ["Name"] = "Defeat 5 of Zuko's Subordinates",
                                                ["Progress"] = {
                                                    [1] = 0,
                                                    [2] = 5
                                                }
                                            }
                                        },
                                        ["Current"] = "Help Somi by defeating 5 of Zuko's Subordinates"
                                    }
                                }
                                
                                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
                            end
                        elseif LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("dangerasdasd") and getrenv()._G.CheckQuestNoCooldown() ~= true then
                            for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                                if v.Name == "Zoku's Subordinate" and v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        PosMon = v.HumanoidRootPart.Position
                                        if v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                if AutoEquip then
                                                    EquipWeapon(CombatMode)
                                                end
                                                if AutoKnock then
                                                    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Add_Knockedout")
                                                end                                               
                                                if GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 15 and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 150 then
                                                    if TweenFa then
                                                    TweenFa:Cancel()
                                                    wait(.1)
                                                    end
                                                    LP.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * FarmModes
                                                else
                                                    TweenFa = Tween(v.HumanoidRootPart.CFrame * FarmModes)
                                                end
                                                if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 10 then
                                                    NearestMobs = true
                                                elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) > 10 then
                                                    NearestMobs = false
                                                end
                                            until not FarmQuest or not v.Parent or v.Humanoid.Health <= 0 or getrenv()._G.CheckQuestNoCooldown() == true
                                            NearestMobs = false
                                        end
                                    else
                                        repeat task.wait()
                                            TweenFa = Tween(mobCFTable["Zoku's Subordinate"])
                                        until not FarmQuest or v:FindFirstChild("HumanoidRootPart") or getrenv()._G.CheckQuestNoCooldown() == true
                                    end
                                end
                            end
                        end
                    elseif SelectedQuest == "Sakurai Demons [Lvl.10+]" then
                        if not LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("deletedangerasdrm") and getrenv()._G.CheckQuestNoCooldown() == true then
                            Tween(questCFTable[SelectedQuest])
                            if LP.Character.HumanoidRootPart.CFrame.X == questCFTable[SelectedQuest].X and LP.Character.HumanoidRootPart.CFrame.Z == questCFTable[SelectedQuest].Z and getrenv()._G.CheckQuestNoCooldown() == true then
                                local args = {
                                    [1] = "AddQuest",
                                    [2] = "Players."..LP.Name..".PlayerGui.Npc_Dialogue.LocalScript.Functions",
                                    [3] = 2985.5156582374625,
                                    [4] = game:GetService("ReplicatedStorage").Player_Data[LP.Name].Quest,
                                    [5] = {
                                        ["List"] = {
                                            [1] = {
                                                ["Name"] = "Defeat 3 Sakurai Demons",
                                                ["Progress"] = {
                                                    [1] = 0,
                                                    [2] = 3
                                                }
                                            }
                                        },
                                        ["Current"] = "Get rid of Demons in cave"
                                    }
                                }
                                
                                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))         
                            end
                        elseif LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("deletedangerasdrm") and getrenv()._G.CheckQuestNoCooldown() ~= true then
                            for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                                if v.Name == "Sakurai Demon" and v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        PosMon = v.HumanoidRootPart.Position
                                        if v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                if AutoEquip then
                                                    EquipWeapon(CombatMode)
                                                end
                                                if AutoKnock then
                                                    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Add_Knockedout")
                                                end                                            
                                                if GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 15 and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 150 then
                                                    if TweenFa then
                                                    TweenFa:Cancel()
                                                    wait(.1)
                                                    end
                                                    LP.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * FarmModes
                                                else
                                                    TweenFa = Tween(v.HumanoidRootPart.CFrame * FarmModes)
                                                end
                                                if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 10 then
                                                    NearestMobs = true
                                                elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) > 10 then
                                                    NearestMobs = false
                                                end
                                            until not FarmQuest or not v.Parent or v.Humanoid.Health <= 0 or getrenv()._G.CheckQuestNoCooldown() == true
                                            NearestMobs = false
                                        end
                                    else
                                        repeat task.wait()
                                            if GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 15 and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 150 then
                                                -- Buat Fix Bug xD
                                            else
                                                TweenFa = Tween(mobCFTable["Sakurai Demon"])
                                            end
                                        until not FarmQuest or v:FindFirstChild("HumanoidRootPart") or getrenv()._G.CheckQuestNoCooldown() == true
                                    end
                                end
                            end
                        end
                    elseif SelectedQuest == "Kaden's Subordinates [Lvl.20+]" then
                        if not LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("addfor_defeat_kanden_subordinate") and getrenv()._G.CheckQuestNoCooldown() == true then
                            Tween(questCFTable[SelectedQuest])
                            if LP.Character.HumanoidRootPart.CFrame.X == questCFTable[SelectedQuest].X and LP.Character.HumanoidRootPart.CFrame.Z == questCFTable[SelectedQuest].Z and getrenv()._G.CheckQuestNoCooldown() == true then
                                local args = {
                                    [1] = "AddQuest",
                                    [2] = "Players."..LP.Name..".PlayerGui.Npc_Dialogue.LocalScript.Functions",
                                    [3] = 6793.073434052053,
                                    [4] = game:GetService("ReplicatedStorage").Player_Data[LP.Name].Quest,
                                    [5] = {
                                        ["List"] = {
                                            [1] = {
                                                ["Name"] = "Defeat 4 Kaden's Subordinate",
                                                ["Progress"] = {
                                                    [1] = 0,
                                                    [2] = 4
                                                }
                                            }
                                        },
                                        ["Current"] = "Defeat Kaden's Subordinate"
                                    }
                                }
                                
                                game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer(unpack(args))
                            end
                        elseif LP.PlayerGui["Litle_Images_thingies_dat_show_u_where_stuff_is"].Holder:FindFirstChild("addfor_defeat_kanden_subordinate") and getrenv()._G.CheckQuestNoCooldown() ~= true then
                            for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                                if v.Name == "Kaden's Subordinate" and v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        PosMon = v.HumanoidRootPart.Position
                                        if v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                if AutoEquip then
                                                    EquipWeapon(CombatMode)
                                                end
                                                if AutoKnock then
                                                    game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Add_Knockedout")
                                                end                                             
                                                if GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 15 and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 150 then
                                                    if TweenFa then
                                                    TweenFa:Cancel()
                                                    wait(.1)
                                                    end
                                                    LP.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * FarmModes
                                                else
                                                    TweenFa = Tween(v.HumanoidRootPart.CFrame * FarmModes)
                                                end
                                                if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 10 then
                                                    NearestMobs = true
                                                elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) > 10 then
                                                    NearestMobs = false
                                                end
                                            until not FarmQuest or not v.Parent or v.Humanoid.Health <= 0 or getrenv()._G.CheckQuestNoCooldown() == true
                                            NearestMobs = false
                                        end
                                    else
                                        repeat task.wait()
                                            TweenFa = Tween(mobCFTable["Kaden's Subordinate"])
                                        until not FarmQuest or v:FindFirstChild("HumanoidRootPart") or getrenv()._G.CheckQuestNoCooldown() == true
                                    end
                                end
                            end
                        end
                    end
                end
            else
                antifall1:Destroy()
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if FarmMob then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall2 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall2.Velocity = Vector3.new(0, 0, 0)
                    antifall2.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                        if v.Name == SelectedMob and v:IsA("Model") and v:FindFirstChild("Humanoid") then
                            if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                PosMon = v.HumanoidRootPart.Position
                                repeat task.wait()
                                    if AutoEquip then
                                        EquipWeapon(CombatMode)
                                    end
                                    if AutoKnock then
                                        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Add_Knockedout")
                                    end                                        
                                    if GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 15 and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 150 then
                                        if TweenFa then
                                        TweenFa:Cancel()
                                        wait(.1)
                                        end
                                        LP.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * FarmModes
                                    else
                                        TweenFa = Tween(v.HumanoidRootPart.CFrame * FarmModes)
                                    end
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) < 10 then
                                        NearestMobs = true
                                    elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v.HumanoidRootPart.CFrame * FarmModes) > 10 then
                                        NearestMobs = false
                                    end
                                until not FarmMob or v.Name ~= SelectedMob or not v.Parent or v.Humanoid.Health <= 0
                                NearestMobs = false
                            else
                                repeat task.wait()
                                    if GetDistance(mobCFTable[SelectedMob]) < 15 and GetDistance(mobCFTable[SelectedMob]) < 150 then
                                        if TweenFa then
                                            TweenFa:Cancel()
                                            wait(.1)
                                            end
                                            LP.Character.HumanoidRootPart.CFrame = mobCFTable[SelectedMob]
                                    else
                                        TweenFa = Tween(mobCFTable[SelectedMob])
                                    end
                                until not FarmMob or v.Name ~= SelectedMob or v:FindFirstChild("HumanoidRootPart")
                            end
                        end
                    end
                end
            else
                antifall2:Destroy()
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if FarmBoss then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall.Velocity = Vector3.new(0, 0, 0)
                    antifall.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                        if string.match(v.Name, SelectedBoss) and v:IsA("Model") and v:FindFirstChild("Humanoid") then
                            if v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then
                                PosMon = v.HumanoidRootPart.Position
                                repeat task.wait()
                                    if AutoEquip then
                                        EquipWeapon(CombatMode)
                                    end
                                    if AutoKnock then
                                        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Add_Knockedout")
                                    end                                        
                                    if GetDistance(v:GetModelCFrame() * FarmModes) < 15 and GetDistance(v:GetModelCFrame() * FarmModes) < 150 then
                                        if TweenFa then
                                        TweenFa:Cancel()
                                        wait(.1)
                                        end
                                        LP.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * FarmModes
                                    else
                                        TweenFa = Tween(v:GetModelCFrame() * FarmModes)
                                    end
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v:GetModelCFrame() * FarmModes) < 10 then
                                        NearestMobs = true
                                    elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v:GetModelCFrame() * FarmModes) > 10 then
                                        NearestMobs = false
                                    end
                                until not FarmBoss or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                                NearestMobs = false
                            else
                                repeat task.wait()
                                    TweenFa = Tween(v:GetModelCFrame())
                                until v:FindFirstChild("HumanoidRootPart") or not FarmBoss
                            end
                        end
                    end
                end
            else
                antifall:Destroy()
            end
        end)
    end
end) 

spawn(function()
    while task.wait() do
        pcall(function()
            if FarmAllBoss then
                if not LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    antifall3 = Instance.new("BodyVelocity", LP.Character.HumanoidRootPart)
                    antifall3.Velocity = Vector3.new(0, 0, 0)
                    antifall3.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                elseif LP.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                    for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
                        if table.find(BossessTable, v.Name) and v:IsA("Model") and v:FindFirstChild("Humanoid") then
                            if v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    if AutoEquip then
                                        EquipWeapon(CombatMode)
                                    end
                                    if AutoKnock then
                                        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S:FireServer("Add_Knockedout")
                                    end                                        
                                    if GetDistance(v:GetModelCFrame() * FarmModes) < 15 and GetDistance(v:GetModelCFrame() * FarmModes) < 150 then
                                        if TweenFa then
                                        TweenFa:Cancel()
                                        wait(.1)
                                        end
                                        LP.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() * FarmModes
                                    else
                                        TweenFa = Tween(v:GetModelCFrame() * FarmModes)
                                    end
                                    if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and GetDistance(v:GetModelCFrame() * FarmModes) < 10 then
                                        NearestMobs = true
                                    elseif v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") and GetDistance(v:GetModelCFrame() * FarmModes) > 10 then
                                        NearestMobs = false
                                    end
                                until not FarmAllBoss or not v.Parent or v.Humanoid.Health <= 0 or not v:IsDescendantOf(workspace)
                                NearestMobs = false
                            end
                        end
                    end
                end
            else
                antifall3:Destroy()
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        if AutoCollectChest then
            if nearestChests() ~= nil then
                for i,v in pairs(nearestChests().Drops:GetChildren()) do
                    if not table.find(invTable, v.Name) then
                        nearestChests().Add_To_Inventory:InvokeServer(v.Name)
                    end
                end      
            end
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
           AtkActive = KillAura and (FarmBoss and NearestMobs) or KillAura and (FarmQuest and NearestMobs) or KillAura and (FarmMob and NearestMobs) or KillAura and (FarmAllBoss and NearestMobs)
           SkillActive = AutoUseSkills and (FarmBoss and NearestMobs) or AutoUseSkills and (FarmQuest and NearestMobs) or AutoUseSkills and (FarmMob and NearestMobs) or AutoUseSkills and (FarmAllBoss and NearestMobs)
            if FarmMode == "Above" then
                FarmModes = CFrame.new(0,Dis,0) * CFrame.Angles(math.rad(-90),0,0) 
            else
                FarmModes = CFrame.new(0,-Dis,0) * CFrame.Angles(math.rad(90),0,0)
            end
            for i,v in pairs(LP.PlayerGui.MainGuis.Items.Scroll:GetChildren()) do
                Insert = true
                if v.ClassName == "Frame" and v.Name ~= "Health Elixir" and v.Name ~= "Health Regen Elixir" and v.Name ~= "Stamina Elixir" and v.Name ~= "Bandage" then
                    for i,v2 in pairs(invTable) do if v2 == v.Name then Insert = false end end
                    if Insert == true then table.insert(invTable, v.Name) end
                end
            end
        end)
    end
end)


spawn(function()
    while wait(1.13) do 
        pcall(function()
            if AtkActive then
                if CombatMode == "Fist"then
                    for i = 1,10 do
                        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("fist_combat", LP, LP.Character, LP.Character.HumanoidRootPart, LP.Character.Humanoid, 919)
                    end 
                    wait(.2)
                elseif CombatMode == "Sword" then
                    for i = 1,10 do
                        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("Sword_Combat_Slash", LP, LP.Character, LP.Character.HumanoidRootPart, LP.Character.Humanoid, 919)
                    end
                    wait(.2)
                elseif CombatMode == "Claw" then
                    for i = 1,10 do
                        game:GetService("ReplicatedStorage").Remotes.To_Server.Handle_Initiate_S_:InvokeServer("claw_Combat_Slash", LP, LP.Character, LP.Character.HumanoidRootPart, LP.Character.Humanoid, 919)
                    end   
                    wait(.2)
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if SkillActive then
                for key, value in next, Options.SkillDropdown.Value do
                    if AutoUseSkills and key == "Z" and value and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind("Z")
                        end              
                        UsingSkill = false
                    end
                    if AutoUseSkills and key == "X" and value and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind("X")
                        end             
                        UsingSkill = false
                    end
                    if AutoUseSkills and key == "C" and value and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind("C")
                        end             
                        UsingSkill = false
                    end
                    if AutoUseSkills and key == "V" and value and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind("V")
                        end              
                        UsingSkill = false
                    end
                    if AutoUseSkills and key == "B" and value and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind("B")
                        end               
                        UsingSkill = false
                    end
                    if AutoUseSkills and key == "N" and value and not UsingSkill then
                        for i = 1,7 do
                            UsingSkill = true
                            SkillBind("N")
                        end                
                        UsingSkill = false
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        if InfS then
            getrenv()._G.AddStamina("gpthebest", 50)
        end
    end
end)

spawn(function()
    while task.wait() do
        if InfB then
            getrenv()._G.AddBreath("gpthebest", 50)
        end
    end
end)

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if FarmAllBoss or FarmBoss or FarmQuest or FarmMob or TPtoVillage or TPtoTrainer then
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
                if v:IsA("Humanoid") then
                    v:ChangeState(11)
                end
            end
        end
    end)
end)

local TheFullScriptName = "Nooby and STEVE's Brookscriptven V2";

local guiItself = Instance.new("ScreenGui", script.Name == "ExploitScript" and game.Players.LocalPlayer.PlayerGui or game.CoreGui)
guiItself.ResetOnSpawn = false
guiItself.IgnoreGuiInset = true
guiItself.Name = "WOAH THE INTRO IS SOO COOL YOU WILL BE ENTERTAINED"
if script.Name == "ExploitScript" then
	getsynasset = function()return "rbxassetid://13027875405"end
	httprequest = function()wait(1)end
	writefile = function()wait()end
	readfile = function()wait()end
	isfile = function()wait()return false;end
else
	httprequest = function(linkget)
		return game:HttpGet(linkget)
	end
end

-- Local Play Sound
local playSoundLocal = function(soundId, volume, pitch)
	local audioInst = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
	audioInst.Name = math.random(10000000, 99999999)
	audioInst.SoundId = soundId
	audioInst.Volume = volume
	audioInst.PlaybackSpeed = pitch
	audioInst:Play()
	audioInst.Ended:Connect(function() audioInst:Destroy() end)
end

local AllIntrosMade = {
	{
		Name = "PreparatoryIntro",
		BoxColor = Color3.new(255, 251, 130),
		RequiresGetSyn = false,
		AnimationFunction = (function(workplace)
			local isDone = false
			local isNamed = false
			local IntroName = workplace.IntroName
			spawn(function()
				while not isDone do
					game["Run Service"].RenderStepped:Wait()
					local UpperCornerThing, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.FloorBox.Position + (workplace.FloorBox.Size * Vector3.new(0.25, 0.5, -0.5)))
					local LowerCornerThing, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.FloorBox.Position + (workplace.FloorBox.Size * Vector3.new(-0.25, -0.5, -0.5)))
					IntroName.Position = UDim2.new(UpperCornerThing.X, 0, UpperCornerThing.Y, 0)
					IntroName.Size = UDim2.new(LowerCornerThing.X - UpperCornerThing.X, 0, LowerCornerThing.Y - UpperCornerThing.Y, 0)
				end
			end)
			for _,v in pairs(workplace.STEVE:GetDescendants()) do
				if v:IsA("BasePart") and v.Transparency ~= 1 then
					v.Transparency = 1
					game.TweenService:Create(v, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {Transparency = 0}):Play()
				end
			end
			local SCRIPT = Instance.new("Part", workplace.STEVE)
			SCRIPT.Name = "le script that is running rn cuz roblox funee"
			SCRIPT.Size = Vector3.new(2.219, 3.124, 1.04)
			SCRIPT.CFrame = CFrame.new(1.943, 1.132, -1.352) * CFrame.Angles(math.rad(-45), math.rad(22.5), 0)
			local SCRIPTM = Instance.new("SpecialMesh", SCRIPT)
			SCRIPTM.MeshId = "rbxassetid://6902080061"
			SCRIPTM.TextureId = "rbxassetid://6902080095"
			SCRIPTM.Scale = Vector3.one * 1.5
			workplace.STEVE["HumanoidRootPart"].CFrame = CFrame.new(3.09200001, 1, -0.477999926, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)
			workplace.STEVE["Torso"].CFrame = CFrame.new(3.09200001, 1, -0.477999926, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)
			workplace.STEVE["Left Arm"].CFrame = CFrame.new(1.68458021, 1.40245509, 0.235900253, 0.70710665, 0.693519831, 0.137949705, 0, 0.195090353, -0.980785131, -0.70710665, 0.693519831, 0.137949705)
			workplace.STEVE["Right Arm"].CFrame = CFrame.new(3.80590081, 1.40245509, -1.88541985, 0.70710665, 0.693519831, 0.137949705, 0, 0.195090353, -0.980785131, -0.70710665, 0.693519831, 0.137949705)
			workplace.STEVE["Left Leg"].CFrame = CFrame.new(2.73844671, -1, -0.124446541, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)
			workplace.STEVE["Right Leg"].CFrame = CFrame.new(3.4455533, -1, -0.83155334, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)
			workplace.STEVE["Head"].CFrame = CFrame.new(3.09200001, 2.5, -0.477999806, 0.707106709, -0.13794969, 0.693519831, 0, 0.980785251, 0.195090324, -0.707106709, -0.13794969, 0.693519831)
			workplace.STEVE["Head"]["Handle"].CFrame = CFrame.new(3.061656, 2.74072599, -0.512894928, 0.70710659, -0.13794969, 0.693519711, 0, 0.980785251, 0.195090279, -0.70710659, -0.13794969, 0.693519711)
			workplace.STEVE["le script that is running rn cuz roblox funee"].CFrame = CFrame.new(1.83817029, 1.25108254, -1.80337119, -0.707107067, -0.392847359, -0.587937593, 2.38418579e-07, 0.831469476, -0.555570483, 0.70710659, -0.392847896, -0.587937772)
			spawn(function()
				local allNames = {"My script name here???", "probably ballerifier", "insert perfect name", "cool nooby and steve script", "TERRATECH HACKING", "flipper zero momento", "we are god puhahaha?", "god fe admin script brookhaven real", "Free robux", "hello this is steve's script", "nooby is lazy lol", "do i really have to name the script?", "wow how wowderful", "i cant think of any title in this scenario", "nooby's epic script :D", "tubers93 moment", "were friends, really friends", game.Players.LocalPlayer.Name.." is reading this, real!"}
				local TweenPlaying = false
				local TweenCreated = function()
					TweenPlaying = true
					game.TweenService:Create(workplace.STEVE["HumanoidRootPart"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(3.09200001, 1, -0.477999926, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)}):Play()
					game.TweenService:Create(workplace.STEVE["Torso"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(3.09200001, 1, -0.477999926, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)}):Play()
					game.TweenService:Create(workplace.STEVE["Left Arm"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(1.68458021, 1.40245509, 0.235900253, 0.70710665, 0.693519831, 0.137949705, 0, 0.195090353, -0.980785131, -0.70710665, 0.693519831, 0.137949705)}):Play()
					game.TweenService:Create(workplace.STEVE["Right Arm"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(3.97180295, 2.15105343, -1.40029359, 0.60049051, 0.255099595, -0.757849276, 0.375330329, -0.926776707, -0.0145651102, -0.706072688, -0.275697589, -0.652267039)}):Play()
					game.TweenService:Create(workplace.STEVE["Left Leg"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(2.73844671, -1, -0.124446541, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)}):Play()
					game.TweenService:Create(workplace.STEVE["Right Leg"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(3.4455533, -1, -0.83155334, 0.707106769, 0, 0.707106769, 0, 1, 0, -0.707106769, 0, 0.707106769)}):Play()
					game.TweenService:Create(workplace.STEVE["Head"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(3.09200001, 2.5, -0.477999687, 0.70710659, -0.270598054, 0.653281271, 0, 0.923879445, 0.382683337, -0.70710659, -0.270598054, 0.653281271)}):Play()
					game.TweenService:Create(workplace.STEVE["Head"]["Handle"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(3.02907419, 2.72710109, -0.545475781, 0.707105756, -0.270597965, 0.653280437, 0, 0.923879206, 0.38268292, -0.707105756, -0.270597935, 0.653280377)}):Play()
					game.TweenService:Create(workplace.STEVE["le script that is running rn cuz roblox funee"], TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, true, 0), {CFrame = CFrame.new(1.83817029, 1.25108254, -1.80337119, -0.707107067, -0.392847359, -0.587937593, 2.38418579e-07, 0.831469476, -0.555570483, 0.70710659, -0.392847896, -0.587937772)}):Play()
					spawn(function()
						wait(1.5)
						TweenPlaying = false
					end)
				end
				while not isNamed do
					game["Run Service"].RenderStepped:Wait()
					if not TweenPlaying and math.random(0, 100) == 0 then
						TweenCreated()
						playSoundLocal("rbxassetid://12222076", 2, math.random(90, 110) / 100)
						spawn(function()
							local Named = allNames[math.random(1, #allNames)]
							for i=1, Named:len() do
								IntroName.Text = Named:sub(1, i)
								playSoundLocal("rbxasset://sounds/SWITCH3.wav", 0.5, math.random(90, 110) / 100)
								wait(1/Named:len())
							end
						end)
					end
				end
				wait(2)
				TweenCreated()
				playSoundLocal("rbxassetid://12222076", 2, math.random(90, 110) / 100)
				wait(0.2)
				local realName = TheFullScriptName
				for i=1, realName:len() do
					IntroName.Text = realName:sub(1, i)
					playSoundLocal("rbxasset://sounds/SWITCH3.wav", 0.5, math.random(90, 110) / 100)
					wait(1/realName:len())
				end

			end)
			wait(math.random(50, 300) / 100)
			workplace.Nooby:PivotTo(CFrame.new(-2.5, -4.5, 5))
			playSoundLocal("rbxasset://sounds/bfsl-minifigfoots1.mp3", 5, 1)
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1.25)
			for _,v in pairs(workplace.Nooby:GetDescendants()) do
				if v:IsA("BasePart") then
					game.TweenService:Create(v, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {CFrame = v.CFrame + Vector3.new(0, 8, 0)}):Play()
				end
			end
			wait(1)
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			game.TweenService:Create(workplace.Nooby.Head, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.5, 4.99, 4.902) * CFrame.Angles(math.rad(-10.384), math.rad(22.896), math.rad(-4.353))}):Play()
			game.TweenService:Create(workplace.Nooby["Left Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-4.481, 4.195, 5) * CFrame.Angles(0, 0, math.rad(-101.25))}):Play()
			wait(0.5)
			playSoundLocal("rbxasset://sounds/bass.wav", 1, 1)
			local KeyboardRoot = Instance.new("Part", workplace)
			KeyboardRoot.Parent = workplace
			KeyboardRoot.CFrame = CFrame.new(-5.43600035, 6.30200148, 5.4000001, 0.98078531, 3.51837173e-08, 0.195090339, -0.195090339, -4.28714948e-08, 0.98078531, 4.28714806e-08, -1, -3.51837279e-08)
			KeyboardRoot.Position = Vector3.new(-66.084, 5.558, 4.746)
			KeyboardRoot.Size = Vector3.new(1.753, 0.5, 6.356)
			local KBROOTM = Instance.new("SpecialMesh", KeyboardRoot)
			KBROOTM.MeshId = "rbxassetid://5367740648"
			KBROOTM.Scale = Vector3.new(0.115, 0.15, 0.127)
			game.TweenService:Create(KeyboardRoot, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {Position = Vector3.new(-6.084, 5.558, 4.746)}):Play()
			playSoundLocal("rbxassetid://12222200", 1, 1)
			playSoundLocal("rbxasset://sounds/hit.wav", 0.3, 1)
			wait(0.5)
			playSoundLocal("rbxasset://sounds/snap.wav", 1, 1)
			playSoundLocal("rbxasset://sounds/Kid saying Ouch.wav", 1, 1)
			game.TweenService:Create(KeyboardRoot, TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {Position = Vector3.new(-5.584, 5.558, 4.746)}):Play()
			for _,v in pairs(workplace.Nooby:GetDescendants()) do
				if v:IsA("BasePart") then
					game.TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = v.CFrame + Vector3.new(0.5, 0, 0)}):Play()
				end
			end
			wait(0.75)
			playSoundLocal("rbxasset://sounds/splat.wav", 1, 1)
			game.TweenService:Create(workplace.Nooby["Head"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.51612663, 7.0410409, 5.5090971, 0.999424458, -0.0322519578, 0.0105408812, 0.0324367471, 0.999314547, -0.0178576913, -0.00995770842, 0.0181893259, 0.999784946)}):Play()
			game.TweenService:Create(workplace.Nooby["Torso"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.5, 5.50001478, 5.5, 1, -2.64422108e-25, 0, -2.63222768e-25, 1, -2.64773842e-23, 0, 2.64819533e-23, 1)}):Play()
			game.TweenService:Create(workplace.Nooby["Right Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1, 6.41575003, 5.2222147, 1, -1.3556338e-28, -1.67436091e-29, -9.87660871e-29, -0.831469655, -0.555570185, 5.581272e-30, 0.555570185, -0.831469655)}):Play()
			game.TweenService:Create(workplace.Nooby["Right Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.00000405, 3.94443202, 4.6685195, 1, -7.98486894e-08, 2.00761224e-06, 1.71363126e-06, 0.555569291, -0.831470251, -1.04897595e-06, 0.831470191, 0.555569291)}):Play()
			game.TweenService:Create(workplace.Nooby["HumanoidRootPart"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.5, 5.50001478, 5.5, 1, -1.91656074e-25, 0, -1.9167338e-25, 1, -2.64702592e-23, 0, 2.64696439e-23, 1)}):Play()
			game.TweenService:Create(workplace.Nooby["Left Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.00000548, 3.944453, 4.66853619, 1, -5.11263522e-07, 5.72383613e-07, 7.5996229e-07, 0.555570185, -0.831469774, 1.07100867e-07, 0.831469715, 0.555570126)}):Play()
			game.TweenService:Create(workplace.Nooby["Left Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-4, 6.41575003, 5.2222147, 1, -3.51046142e-29, -1.67436091e-29, -3.84906729e-29, -0.831469655, -0.555570185, 5.581272e-30, 0.555570185, -0.831469655)}):Play()
			game.TweenService:Create(KeyboardRoot, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.4360013, 4.88778734, 3.98578596, 3.15612887e-08, -2.04134469e-08, 1, 0.707106709, 0.707106888, -7.88271226e-09, -0.707106829, 0.707106709, 3.67516897e-08)}):Play()
			local TextBoxNooby = Instance.new("TextLabel", workplace)
			TextBoxNooby.Position = UDim2.new(0, 0, 1, 0)
			TextBoxNooby.Size = UDim2.new(1, 0, 0, 16)
			TextBoxNooby.TextScaled = true
			TextBoxNooby.TextXAlignment = Enum.TextXAlignment.Left
			TextBoxNooby.Font = Enum.Font.Code
			TextBoxNooby.AnchorPoint = Vector2.new(0, 1)
			TextBoxNooby.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
			TextBoxNooby.Text = "  Run a command"
			TextBoxNooby.BackgroundTransparency = 1
			TextBoxNooby.TextTransparency = 1
			game.TweenService:Create(TextBoxNooby, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
			wait(0.75)
			TextBoxNooby.Text = "  _"
			wait(0.25)
			local LeftArmTyping = {
				CFrame.new(-4, 5.80867338, 5.03806019, 1, -1.86048775e-29, -2.78436025e-29, -9.58732967e-30, 0.382683367, -0.923879504, -1.88122975e-30, 0.923879504, 0.382683367),
				CFrame.new(-3.77059841, 5.75001526, 4.89644623, 0.923879564, -0.382683396, 0, 0.146446586, 0.353553325, -0.923879445, 0.353553385, 0.853553236, 0.382683307),
				CFrame.new(-3.89284754, 6.11471748, 4.92335987, 0.980785251, -0.195090428, 1.2293458e-07, -0.0380601548, -0.191341832, -0.980785251, 0.191341847, 0.961939812, -0.195090443)
			}
			local RiteArmTyping = {
				CFrame.new(-1, 5.80867338, 5.03806019, 1, -9.62216628e-29, -1.65563847e-29, -4.66097375e-29, 0.382683367, -0.923879504, -5.76931093e-29, 0.923879504, 0.382683367),
				CFrame.new(-1.2294023, 5.75001478, 4.8964467, 0.923879445, 0.382683456, 4.47034836e-08, -0.146446541, 0.353553414, -0.923879683, -0.353553355, 0.853553593, 0.382683516),
				CFrame.new(-1.10715246, 6.11471558, 4.92335844, 0.980785251, 0.195090339, 3.7252903e-09, 0.0380602516, -0.191341788, -0.980785429, -0.191341728, 0.961939752, -0.195090398)
			}
			playSoundLocal("rbxasset://sounds/swordlunge.wav", 1, 1)
			local commandToRunFake = "workspace.FloorBox.Color = Color3.new(1, 1, 1)"
			for i=1, string.len(commandToRunFake) do
				workplace.Nooby["Left Arm"].CFrame = LeftArmTyping[math.random(1, #LeftArmTyping)]
				workplace.Nooby["Right Arm"].CFrame = RiteArmTyping[math.random(1, #RiteArmTyping)]
				KeyboardRoot.Position = Vector3.new(-2.4360013, 4.88778734 - (math.random(0, 100) / 200), 3.98578596)
				local char = commandToRunFake:sub(i, i)
				if char == " " then
					spawn(function()
						playSoundLocal("rbxasset://sounds/snap.wav", 1, math.random(190, 210) / 100)
						TextBoxNooby.Text = "  "..commandToRunFake:sub(1, i).."_"
						wait(0.1)
						playSoundLocal("rbxasset://sounds/SWITCH3.wav", 1, math.random(90, 110) / 100)
					end)
					wait(0.3)
				elseif char == "(" or char == ")" then
					spawn(function()
						playSoundLocal("rbxasset://sounds/switch.wav", 1, math.random(90, 110) / 100)
						wait(0.25)
						playSoundLocal("rbxasset://sounds/switch.wav", 1, math.random(90, 110) / 100)
						TextBoxNooby.Text = "  "..commandToRunFake:sub(1, i).."_"
						wait(0.1)
						playSoundLocal("rbxasset://sounds/switch.wav", 1, math.random(90, 110) / 100)
					end)
					wait(0.5)
				else
					playSoundLocal("rbxasset://sounds/switch.wav", 1, math.random(90, 110) / 100)
					TextBoxNooby.Text = "  "..commandToRunFake:sub(1, i).."_"
					wait(0.1)
				end
			end
			playSoundLocal("rbxasset://sounds/snap.wav", 1, math.random(190, 210) / 100)
			TextBoxNooby.BackgroundColor3 = Color3.new(0, 0.666667, 1)
			workplace.Nooby["Left Arm"].CFrame = LeftArmTyping[3]
			workplace.Nooby["Right Arm"].CFrame = RiteArmTyping[3]
			KeyboardRoot.Position = Vector3.new(-2.4360013, 4.88778734, 3.98578596)
			local ChangingColorDuration = 0
			while ChangingColorDuration < 1 do
				ChangingColorDuration += game["Run Service"].RenderStepped:Wait()
				playSoundLocal("rbxasset://sounds/SWITCH3.wav", 1, math.random(90, 110) / 100)
				workplace.FloorBox.Color = BrickColor.random().Color
			end
			while ChangingColorDuration < 2 do
				for i=1, 2 do
					ChangingColorDuration += game["Run Service"].RenderStepped:Wait()
				end
				playSoundLocal("rbxasset://sounds/SWITCH3.wav", 1, math.random(90, 110) / 100)
				workplace.FloorBox.Color = BrickColor.random().Color
			end
			while ChangingColorDuration < 3 do
				for i=1, 4 do
					ChangingColorDuration += game["Run Service"].RenderStepped:Wait()
				end
				playSoundLocal("rbxasset://sounds/SWITCH3.wav", 1, math.random(90, 110) / 100)
				workplace.FloorBox.Color = BrickColor.random().Color
			end
			for i=1, 5 do
				wait(0.25)
				playSoundLocal("rbxasset://sounds/SWITCH3.wav", 1, math.random(90, 110) / 100)
				workplace.FloorBox.Color = BrickColor.random().Color
			end
			playSoundLocal("rbxasset://sounds/SWITCH3.wav", 1, math.random(90, 110) / 100)
			workplace.FloorBox.Color = Color3.new(1, 1, 1)
			wait(0.2)
			playSoundLocal("rbxasset://sounds/victory.wav", 1, 1)
			local chatClock = 0
			spawn(function()
				local NoobyChat = (function(name, target)
					local FrameChatList = Instance.new("Frame", workplace)
					FrameChatList.Name = "BubbleChat-"..name
					FrameChatList.AnchorPoint = Vector2.new(0.5, 1)
					FrameChatList.Size = UDim2.new(0, 100, 0, 100)
					FrameChatList.BackgroundTransparency = 1
					spawn(function()
						while not isDone do
							game["Run Service"].RenderStepped:Wait()
							local lol, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.Nooby["Head"].Position + Vector3.new(0, 2, 0))
							FrameChatList.Position = UDim2.new(lol.X, 0, lol.Y, 0)
						end
					end)
					local temp = Instance.new("UIPadding", FrameChatList)
					temp.PaddingBottom = UDim.new(0, 8)
					temp.PaddingTop = UDim.new(0, 0)
					temp.PaddingLeft = UDim.new(0, 0)
					temp.PaddingRight = UDim.new(0, 0)
					local temp = Instance.new("UIListLayout", FrameChatList)
					temp.Padding = UDim.new(0, 6)
					temp.FillDirection = Enum.FillDirection.Vertical
					temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
					temp.SortOrder = Enum.SortOrder.LayoutOrder
					temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
					return FrameChatList
				end)("Nooby", workplace.Nooby.Head)
				local STEVEChat = (function(name, target)
					local FrameChatList = Instance.new("Frame", workplace)
					FrameChatList.Name = "BubbleChat-"..name
					FrameChatList.AnchorPoint = Vector2.new(0.5, 1)
					FrameChatList.Size = UDim2.new(0, 100, 0, 100)
					FrameChatList.BackgroundTransparency = 1
					spawn(function()
						while not isDone do
							game["Run Service"].RenderStepped:Wait()
							local lol, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.STEVE["Head"].Position + Vector3.new(0, 2, 0))
							FrameChatList.Position = UDim2.new(lol.X, 0, lol.Y, 0)
						end
					end)
					local temp = Instance.new("UIPadding", FrameChatList)
					temp.PaddingBottom = UDim.new(0, 8)
					temp.PaddingTop = UDim.new(0, 0)
					temp.PaddingLeft = UDim.new(0, 0)
					temp.PaddingRight = UDim.new(0, 0)
					local temp = Instance.new("UIListLayout", FrameChatList)
					temp.Padding = UDim.new(0, 6)
					temp.FillDirection = Enum.FillDirection.Vertical
					temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
					temp.SortOrder = Enum.SortOrder.LayoutOrder
					temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
					return FrameChatList
				end)("STEVE", workplace.STEVE.Head)
				while not isDone do
					chatClock += game["Run Service"].RenderStepped:Wait()
					for _,chat in pairs(NoobyChat:GetChildren()) do
						if chat.Name == "epic bubble chat lol" then
							if chatClock - chat.Value.Value > 5 and chat:FindFirstChild("IsClosing") == nil then
								Instance.new("BoolValue", chat).Name = "IsClosing"
								game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
								spawn(function()
									wait(0.5)
									chat:Destroy()
								end)
							end
						end
					end
					for _,chat in pairs(STEVEChat:GetChildren()) do
						if chat.Name == "epic bubble chat lol" then
							if chatClock - chat.Value.Value > 5 and chat:FindFirstChild("IsClosing") == nil then
								Instance.new("BoolValue", chat).Name = "IsClosing"
								game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
								spawn(function()
									wait(0.5)
									chat:Destroy()
								end)
							end
						end
					end
				end
				for _,chat in pairs(NoobyChat:GetChildren()) do
					if chat.Name == "epic bubble chat lol" then
						game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
						spawn(function()
							wait(0.5)
							chat:Destroy()
						end)
					end
				end
				for _,chat in pairs(STEVEChat:GetChildren()) do
					if chat.Name == "epic bubble chat lol" then
						game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
						spawn(function()
							wait(0.5)
							chat:Destroy()
						end)
					end
				end
				wait(2)
				NoobyChat:Destroy()
				STEVEChat:Destroy()
			end)
			local chatPerson = function(person, text)
				local BubbleChatFrame = workplace:FindFirstChild("BubbleChat-"..person)
				local NewBubbleChat = Instance.new("Frame", BubbleChatFrame)
				local textsize = game.TextService:GetTextSize(text, 16, Enum.Font.GothamMedium, Vector2.new(99999, 50)).X + 25
				NewBubbleChat.Name = "epic bubble chat lol"
				NewBubbleChat.AnchorPoint = Vector2.new(0.5, 0.5)
				NewBubbleChat.Size = UDim2.new(0, textsize, 0, 0)
				NewBubbleChat.LayoutOrder = chatClock
				NewBubbleChat.Transparency = 1
				NewBubbleChat.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
				Instance.new("NumberValue", NewBubbleChat).Value = chatClock
				game.TweenService:Create(NewBubbleChat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, textsize, 0, 32)}):Play()
				local temp = Instance.new("UIListLayout", NewBubbleChat)
				temp.Padding = UDim.new(0, -1)
				temp.FillDirection = Enum.FillDirection.Vertical
				temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
				temp.SortOrder = Enum.SortOrder.LayoutOrder
				temp.VerticalAlignment = Enum.VerticalAlignment.Top
				local chat = Instance.new("ImageLabel", NewBubbleChat)
				chat.BackgroundTransparency = 0.1
				chat.ImageTransparency = 0.1
				chat.LayoutOrder = 1
				chat.Size = UDim2.new(1, 0, 1, 0)
				chat.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
				local temp = Instance.new("UIPadding", chat)
				temp.PaddingLeft = UDim.new(0, 8)
				temp.PaddingRight = UDim.new(0, 8)
				temp.PaddingBottom = UDim.new(0, 8)
				temp.PaddingTop = UDim.new(0, 8)
				local temp = Instance.new("UICorner", chat)
				temp.CornerRadius = UDim.new(0, 12)
				local temp = Instance.new("UIListLayout", chat)
				temp.Padding = UDim.new(0, 8)
				temp.FillDirection = Enum.FillDirection.Horizontal
				temp.HorizontalAlignment = Enum.HorizontalAlignment.Left
				temp.SortOrder = Enum.SortOrder.LayoutOrder
				temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
				local temp = Instance.new("TextLabel", chat)
				temp.AnchorPoint = Vector2.new(0.5, 0.5)
				temp.Size = UDim2.new(1, 0, 1, 0)
				temp.Font = Enum.Font.GothamMedium
				temp.TextWrapped = true
				temp.Text = text
				temp.TextSize = 16
				temp.TextTransparency = 0.1
				temp.TextColor3 = Color3.fromRGB(57, 59, 61)
				temp.BackgroundTransparency = 1
				local temp = Instance.new("ImageLabel", NewBubbleChat)
				temp.LayoutOrder = 2
				temp.Size = UDim2.new(0, 9, 0, 6)
				temp.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
				temp.ImageColor3 = Color3.fromRGB(250, 250, 250)
				temp.BackgroundTransparency = 1
			end
			wait(1)
			TextBoxNooby.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
			TextBoxNooby.Text = "  Run a command"
			chatPerson("Nooby", "yo im done :)")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(0.2)
			game.TweenService:Create(TextBoxNooby, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
			game.TweenService:Create(KeyboardRoot, TweenInfo.new(5, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {Position = KeyboardRoot.Position + Vector3.new(50, 0, 0)}):Play()
			wait(2.8)
			chatPerson("Nooby", "ur still not done :D")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1.25)
			game.TweenService:Create(workplace.Nooby["Head"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.44760799, 7.03490973, 5.43927431, 0.835453391, 0.104783989, -0.539479434, -0.02111849, 0.987050831, 0.159011722, 0.549155593, -0.121453926, 0.826847672)}):Play()
			game.TweenService:Create(workplace.Nooby["Torso"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.5, 5.50001478, 5.5, 1, 8.63014755e-26, 0, -8.63014755e-26, 1, -2.64822373e-23, 0, 2.64822373e-23, 1)}):Play()
			game.TweenService:Create(workplace.Nooby["Right Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-0.908407211, 5.62983274, 5.38605833, 0.954514265, -0.228670731, 0.191341877, 0.232276559, 0.972643495, 0.00367664918, -0.186947837, 0.0409350581, 0.981517375)}):Play()
			game.TweenService:Create(workplace.Nooby["Right Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-1.80491233, 3.59387445, 5.87531948, 0.980785012, -0.195091501, 1.71363354e-07, 0.180240989, 0.906127393, 0.382683337, -0.0746584162, -0.375330091, 0.923879683)}):Play()
			game.TweenService:Create(workplace.Nooby["HumanoidRootPart"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.5, 5.50001478, 5.5, 1, -1.91656074e-25, 0, -1.9167338e-25, 1, -2.64702592e-23, 0, 2.64696439e-23, 1)}):Play()
			game.TweenService:Create(workplace.Nooby["Left Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.19509625, 3.59389448, 5.87533569, 0.98078531, 0.195089921, -2.30967999e-07, -0.180239543, 0.906127572, 0.38268292, 0.0746577904, -0.375329763, 0.923879743)}):Play()
			game.TweenService:Create(workplace.Nooby["Left Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-4.09159279, 5.6298337, 5.38605928, 0.954514503, 0.228670567, -0.191341951, -0.232276499, 0.972643077, 0.0036765188, 0.186947986, 0.0409349389, 0.981516838)}):Play()
			wait(0.5)
			chatPerson("STEVE", "im still thinking :/")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 2)
			wait(2.5)
			chatPerson("Nooby", "name it Brookscriptven V2 :o")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1.125)
			wait(2)
			chatPerson("STEVE", "wow ur so smart :O")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1.25)
			wait(1.5)
			chatPerson("Nooby", "thanks ;P")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(0.5)
			chatPerson("STEVE", "im gonna name it wait :)")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			isNamed = true
			KeyboardRoot:Destroy()
			wait(4)
			chatPerson("STEVE", "see im good at designing :P")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 0.875)
			game.TweenService:Create(workplace.STEVE["HumanoidRootPart"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09200001, 1, -0.477999926, 0.555570185, 0, 0.831469595, 0, 1, 0, -0.831469595, 0, 0.555570185)}):Play()
			game.TweenService:Create(workplace.STEVE["Torso"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09200001, 1, -0.477999926, 0.555570185, 0, 0.831469595, 0, 1, 0, -0.831469595, 0, 0.555570185)}):Play()
			game.TweenService:Create(workplace.STEVE["Left Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(1.77956879, 1.26657772, 0.441669136, 0.576541126, 0.741755962, 0.342634767, -0.0507084653, 0.451021194, -0.891071618, -0.815493166, 0.496364921, 0.297645569)}):Play()
			game.TweenService:Create(workplace.STEVE["Right Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.46170235, 1.096524, -1.98983669, 0.517213225, 0.777408719, 0.35794726, -0.0781846568, 0.459401876, -0.884780884, -0.852277994, 0.429634362, 0.29839015)}):Play()
			game.TweenService:Create(workplace.STEVE["Left Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(2.73844671, -1, -0.124446511, 0.707106709, 0, 0.707106709, 0, 1, 0, -0.707106709, 0, 0.707106709)}):Play()
			game.TweenService:Create(workplace.STEVE["Right Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.44555354, -1, -0.83155328, 0.707106709, 0, 0.707106709, 0, 1, 0, -0.707106709, 0, 0.707106709)}):Play()
			game.TweenService:Create(workplace.STEVE["Head"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.05599451, 2.50572371, -0.442005605, -0.707112372, 0.146994293, 0.691651165, 2.36995356e-06, 0.978153586, -0.207881257, -0.70709914, -0.146993712, -0.691664398)}):Play()
			game.TweenService:Create(workplace.STEVE["Head"]["Handle"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09092522, 2.74507689, -0.481481344, -0.707119405, 0.146966591, 0.691647291, 1.87009573e-06, 0.978161037, -0.207845271, -0.707090139, -0.146970019, -0.691675961)}):Play()
			game.TweenService:Create(workplace.STEVE["le script that is running rn cuz roblox funee"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(1.51531219, 0.779952407, -1.5221374, -0.575356066, -0.715808511, -0.395706445, 0.0975569859, 0.420291662, -0.902129531, 0.812064111, -0.557649553, -0.171985254)}):Play()
			wait(2)
			chatPerson("Nooby", "no you are not liar :3")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			playSoundLocal("rbxassetid://8473033909", 1, 1)
			wait(2)
			chatPerson("STEVE", "anyways do the pose")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(1)
			game.TweenService:Create(workplace.STEVE["Head"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09195781, 2.49999976, 0.522028387, 1.0000031, -5.48182371e-08, 3.67634385e-08, -1.01491294e-23, 0.923879504, 0.382683456, 1.49011772e-08, -0.382684618, 0.923882306)}):Play()
			game.TweenService:Create(workplace.STEVE["Head"]["Handle"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09517503, 2.72710085, 0.429820001, 1.00000286, 2.98023366e-08, 2.23517873e-07, -2.9802294e-08, 1, 1.53375808e-07, -7.45060262e-08, -1.5337622e-07, 1.0000031)}):Play()
			game.TweenService:Create(workplace.STEVE["Torso"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09195805, 1, 0.522028387, 1.0000031, -1.78428689e-26, 1.04308235e-07, -1.97450621e-26, 1, -2.646859e-23, 1.49011772e-08, 2.64687399e-23, 1.00000298)}):Play()
			game.TweenService:Create(workplace.STEVE["Left Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(1.01560032, 2.36989355, 0.504932702, -0.74967289, 0.660449982, -0.0424910001, -0.660841286, -0.750503302, -0.00601029396, -0.0358592421, 0.0235740803, 0.99908191)}):Play()
			game.TweenService:Create(workplace.STEVE["Right Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4.77151442, 1.01678693, 0.513667524, 0.965635777, -0.256401628, 0.042494908, 0.256875873, 0.966425717, -0.00601020316, -0.0395271443, 0.0167195834, 0.999078691)}):Play()
			game.TweenService:Create(workplace.STEVE["Left Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(2.59195638, -0.555570245, -0.309443593, 1.00000298, 5.69267335e-08, 7.28517264e-08, 2.98023224e-08, 0.555570066, -0.831469834, 1.49011754e-08, 0.831472218, 0.555571616)}):Play()
			game.TweenService:Create(workplace.STEVE["Right Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.59195948, -1, 0.522028387, 1.0000031, -1.78428689e-26, 1.04308235e-07, -1.97450621e-26, 1, -2.646859e-23, 1.49011772e-08, 2.64687399e-23, 1.00000298)}):Play()
			game.TweenService:Create(workplace.STEVE["HumanoidRootPart"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.09195805, 1, 0.522028387, 1.0000031, -1.78302471e-26, 1.04308235e-07, -1.97324403e-26, 1, -2.646859e-23, 1.49011772e-08, 2.6468743e-23, 1.00000298)}):Play()
			game.TweenService:Create(workplace.STEVE["le script that is running rn cuz roblox funee"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(0.594737291, 4.71626616, 0.282000065, -1.00000286, -3.9135224e-09, -4.47034054e-08, -3.91349175e-09, 1, -3.26659432e-07, -7.45059765e-08, -3.26660341e-07, -1.00000274)}):Play()
			wait(1)
			game.TweenService:Create(workplace.Nooby["Head"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.01612663, 2.5410409, 0.00909686554, 0.999424458, -0.0322519578, 0.0105408812, 0.0324367471, 0.999314547, -0.0178576913, -0.00995770842, 0.0181893259, 0.999784946)}):Play()
			game.TweenService:Create(workplace.Nooby["Torso"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3, 1.00001478, 0, 1, -8.75008152e-26, 0, -8.63014755e-26, 1, -2.64771002e-23, 0, 2.64822373e-23, 1)}):Play()
			game.TweenService:Create(workplace.Nooby["Right Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.04126596, 1.01405764, 0.390395164, 0.853581309, 0.49992162, 0.146555349, -0.518789351, 0.790036917, 0.326650292, 0.0475154705, -0.354853719, 0.933713615)}):Play()
			game.TweenService:Create(workplace.Nooby["Right Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-2.5000031, -0.999995708, -9.09213554e-07, 1.00000203, 3.42726679e-07, -2.60530271e-07, 3.42726679e-07, 1.00000405, 5.52326696e-07, -1.75973028e-07, 4.84080658e-07, 1.00000238)}):Play()
			game.TweenService:Create(workplace.Nooby["HumanoidRootPart"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3, 1.00001478, 0, 1, -1.47347877e-26, 0, -1.47520934e-26, 1, -2.64699752e-23, 0, 2.64699279e-23, 1)}):Play()
			game.TweenService:Create(workplace.Nooby["Left Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.50000477, -0.999978065, -3.6533541e-07, 0.999996066, 1.34110451e-07, 1.49012145e-08, 1.63912773e-07, 0.999997318, -1.49011569e-07, 2.57661092e-08, -2.17828457e-07, 0.999999046)}):Play()
			game.TweenService:Create(workplace.Nooby["Left Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.84535313, 1.05220497, 0.335601598, 0.815549314, -0.574764788, -0.067284137, 0.570252299, 0.77843374, 0.262408763, -0.0984462351, -0.252375394, 0.962611616)}):Play()
			wait(1)
			chatPerson("Nooby", "ehhem... chat test 1 2 3?")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1.25)
			wait(1.5)
			chatPerson("STEVE", "You don't have to say that.")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(1.5)
			local NoobyDialogs = {"yoo sorry for the long intro", "sorry bout that", "## #### just in time", "Hello, I am Nooby! :pig:", "nooby is so cool right?"}
			local STEVEDialogs = {"yea were trying to be cool", "lol nooby wrote john pork reference in here", "puhahaha we are god", "u dont wanna se me angy!!!"}
			chatPerson("Nooby", NoobyDialogs[math.random(1, #NoobyDialogs)])
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(2)
			chatPerson("STEVE", STEVEDialogs[math.random(1, #STEVEDialogs)])
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(2)
			isDone = true
		end)
	},
	{
		Name = "CoolAssIntro",
		BoxColor = Color3.new(1, 1, 1),
		RequiresGetSyn = false,
		AnimationFunction = (function(workplace)
			local isDone = false
			workplace["STEVE"]["HumanoidRootPart"].CFrame = CFrame.new(2.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			workplace["STEVE"]["Torso"].CFrame = CFrame.new(1.63943291, -0.969546139, 0, 0.923879504, -0.382683456, 0, 0.382683456, 0.923879504, 0, 0, 0, 1)
			workplace["STEVE"]["Left Arm"].CFrame = CFrame.new(0.253613502, -1.04357123, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1)
			workplace["STEVE"]["Right Arm"].CFrame = CFrame.new(3.22034216, 0.585264444, 0, -0.831469595, -0.555570304, 0, 0.555570304, -0.831469595, 0, 0, 0, 1)
			workplace["STEVE"]["Left Leg"].CFrame = CFrame.new(2.48405671, -1.58476663, 0.382683575, -2.98023224e-08, -0.923879623, -0.382683486, 1, -2.75337584e-08, -1.14048566e-08, 0, -0.382683486, 0.923879623)
			workplace["STEVE"]["Right Leg"].CFrame = CFrame.new(3.53112912, -1.33494282, -0.195090353, 0.707106709, -0.69352001, 0.137949735, 0.707106829, 0.69351989, -0.137949705, -7.45058149e-09, 0.195090383, 0.980785251)
			workplace["STEVE"]["Head"].CFrame = CFrame.new(1.06540775, 0.416273236, 0, 0.980785251, -0.195090353, 0, 0.195090353, 0.980785251, 0, 0, 0, 1)
			workplace["STEVE"]["Head"]["Handle"].CFrame = CFrame.new(1.0207479, 0.65729177, 0.00171852112, 0.980784774, -0.195090294, 0, 0.195090294, 0.980784774, 0, 0, 0, 1)
			workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(-2.5, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			workplace["Nooby"]["Torso"].CFrame = CFrame.new(-1.9343611, 0, 0.428627253, 0.964778423, 0, -0.263063878, 0, 1, 0, 0.263063878, 0, 0.964778423)
			workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-3.68090296, 1.23505998, 0.154231444, -0.923879623, 0.382683486, 0, -0.382683486, -0.923879623, 0, 0, 0, 1)
			workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(0.0464241505, 0.304909587, 0.654231429, 0.195090353, -0.98078537, 0, 0.98078537, 0.195090353, 0, 0, 0, 1)
			workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-2.43436098, -1.49999988, 0.654231548, 1, 0, 0, 0, 0.195090413, 0.980785251, 0, -0.980785251, 0.195090413)
			workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(-1.4343611, -1.03093529, -0.690246701, 1, 0, 0, 0, 0.98078537, -0.195090368, 0, 0.195090353, 0.98078537)
			workplace["Nooby"]["Head"].CFrame = CFrame.new(-1.9343611, 1.5, 0.305259943, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			spawn(function()
				while not isDone do
					game["Run Service"].RenderStepped:Wait()
					local UpperCornerThing, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.FloorBox.Position + (workplace.FloorBox.Size * Vector3.new(0.25, 0.5, -0.5)))
					local LowerCornerThing, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.FloorBox.Position + (workplace.FloorBox.Size * Vector3.new(-0.25, -0.5, -0.5)))
					workplace.IntroName.Position = UDim2.new(UpperCornerThing.X, 0, UpperCornerThing.Y, 0)
					workplace.IntroName.Size = UDim2.new(LowerCornerThing.X - UpperCornerThing.X, 0, LowerCornerThing.Y - UpperCornerThing.Y, 0)
				end
			end)
			spawn(function()
				local realName = TheFullScriptName
				for i=1, realName:len() do
					workplace.IntroName.Text = realName:sub(1, i)
					playSoundLocal("rbxasset://sounds/SWITCH3.wav", 2, math.random(90, 110) / 100)
					wait(1/realName:len())
				end
			end)
			local chatClock = 0
			spawn(function()
				local NoobyChat = (function(name, target)
					local FrameChatList = Instance.new("Frame", workplace)
					FrameChatList.Name = "BubbleChat-"..name
					FrameChatList.AnchorPoint = Vector2.new(0.5, 1)
					FrameChatList.Size = UDim2.new(0, 100, 0, 100)
					FrameChatList.BackgroundTransparency = 1
					spawn(function()
						while not isDone do
							game["Run Service"].RenderStepped:Wait()
							local lol, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.Nooby["Head"].Position + Vector3.new(0, 2, 0))
							FrameChatList.Position = UDim2.new(lol.X, 0, lol.Y, 0)
						end
					end)
					local temp = Instance.new("UIPadding", FrameChatList)
					temp.PaddingBottom = UDim.new(0, 8)
					temp.PaddingTop = UDim.new(0, 0)
					temp.PaddingLeft = UDim.new(0, 0)
					temp.PaddingRight = UDim.new(0, 0)
					local temp = Instance.new("UIListLayout", FrameChatList)
					temp.Padding = UDim.new(0, 6)
					temp.FillDirection = Enum.FillDirection.Vertical
					temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
					temp.SortOrder = Enum.SortOrder.LayoutOrder
					temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
					return FrameChatList
				end)("Nooby", workplace.Nooby.Head)
				local STEVEChat = (function(name, target)
					local FrameChatList = Instance.new("Frame", workplace)
					FrameChatList.Name = "BubbleChat-"..name
					FrameChatList.AnchorPoint = Vector2.new(0.5, 1)
					FrameChatList.Size = UDim2.new(0, 100, 0, 100)
					FrameChatList.BackgroundTransparency = 1
					spawn(function()
						while not isDone do
							game["Run Service"].RenderStepped:Wait()
							local lol, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.STEVE["Head"].Position + Vector3.new(0, 2, 0))
							FrameChatList.Position = UDim2.new(lol.X, 0, lol.Y, 0)
						end
					end)
					local temp = Instance.new("UIPadding", FrameChatList)
					temp.PaddingBottom = UDim.new(0, 8)
					temp.PaddingTop = UDim.new(0, 0)
					temp.PaddingLeft = UDim.new(0, 0)
					temp.PaddingRight = UDim.new(0, 0)
					local temp = Instance.new("UIListLayout", FrameChatList)
					temp.Padding = UDim.new(0, 6)
					temp.FillDirection = Enum.FillDirection.Vertical
					temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
					temp.SortOrder = Enum.SortOrder.LayoutOrder
					temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
					return FrameChatList
				end)("STEVE", workplace.STEVE.Head)
				while not isDone do
					chatClock += game["Run Service"].RenderStepped:Wait()
					for _,chat in pairs(NoobyChat:GetChildren()) do
						if chat.Name == "epic bubble chat lol" then
							if chatClock - chat.Value.Value > 5 and chat:FindFirstChild("IsClosing") == nil then
								Instance.new("BoolValue", chat).Name = "IsClosing"
								game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
								spawn(function()
									wait(0.5)
									chat:Destroy()
								end)
							end
						end
					end
					for _,chat in pairs(STEVEChat:GetChildren()) do
						if chat.Name == "epic bubble chat lol" then
							if chatClock - chat.Value.Value > 5 and chat:FindFirstChild("IsClosing") == nil then
								Instance.new("BoolValue", chat).Name = "IsClosing"
								game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
								spawn(function()
									wait(0.5)
									chat:Destroy()
								end)
							end
						end
					end
				end
				for _,chat in pairs(NoobyChat:GetChildren()) do
					if chat.Name == "epic bubble chat lol" then
						game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
						spawn(function()
							wait(0.5)
							chat:Destroy()
						end)
					end
				end
				for _,chat in pairs(STEVEChat:GetChildren()) do
					if chat.Name == "epic bubble chat lol" then
						game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
						spawn(function()
							wait(0.5)
							chat:Destroy()
						end)
					end
				end
				wait(2)
				NoobyChat:Destroy()
				STEVEChat:Destroy()
			end)
			local chatPerson = function(person, text)
				local BubbleChatFrame = workplace:FindFirstChild("BubbleChat-"..person)
				local NewBubbleChat = Instance.new("Frame", BubbleChatFrame)
				local textsize = game.TextService:GetTextSize(text, 16, Enum.Font.GothamMedium, Vector2.new(99999, 50)).X + 25
				NewBubbleChat.Name = "epic bubble chat lol"
				NewBubbleChat.AnchorPoint = Vector2.new(0.5, 0.5)
				NewBubbleChat.Size = UDim2.new(0, textsize, 0, 0)
				NewBubbleChat.LayoutOrder = chatClock
				NewBubbleChat.Transparency = 1
				NewBubbleChat.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
				Instance.new("NumberValue", NewBubbleChat).Value = chatClock
				game.TweenService:Create(NewBubbleChat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, textsize, 0, 32)}):Play()
				local temp = Instance.new("UIListLayout", NewBubbleChat)
				temp.Padding = UDim.new(0, -1)
				temp.FillDirection = Enum.FillDirection.Vertical
				temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
				temp.SortOrder = Enum.SortOrder.LayoutOrder
				temp.VerticalAlignment = Enum.VerticalAlignment.Top
				local chat = Instance.new("ImageLabel", NewBubbleChat)
				chat.BackgroundTransparency = 0.1
				chat.ImageTransparency = 0.1
				chat.LayoutOrder = 1
				chat.Size = UDim2.new(1, 0, 1, 0)
				chat.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
				local temp = Instance.new("UIPadding", chat)
				temp.PaddingLeft = UDim.new(0, 8)
				temp.PaddingRight = UDim.new(0, 8)
				temp.PaddingBottom = UDim.new(0, 8)
				temp.PaddingTop = UDim.new(0, 8)
				local temp = Instance.new("UICorner", chat)
				temp.CornerRadius = UDim.new(0, 12)
				local temp = Instance.new("UIListLayout", chat)
				temp.Padding = UDim.new(0, 8)
				temp.FillDirection = Enum.FillDirection.Horizontal
				temp.HorizontalAlignment = Enum.HorizontalAlignment.Left
				temp.SortOrder = Enum.SortOrder.LayoutOrder
				temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
				local temp = Instance.new("TextLabel", chat)
				temp.AnchorPoint = Vector2.new(0.5, 0.5)
				temp.Size = UDim2.new(1, 0, 1, 0)
				temp.Font = Enum.Font.GothamMedium
				temp.TextWrapped = true
				temp.Text = text
				temp.TextSize = 16
				temp.TextTransparency = 0.1
				temp.TextColor3 = Color3.fromRGB(57, 59, 61)
				temp.BackgroundTransparency = 1
				local temp = Instance.new("ImageLabel", NewBubbleChat)
				temp.LayoutOrder = 2
				temp.Size = UDim2.new(0, 9, 0, 6)
				temp.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
				temp.ImageColor3 = Color3.fromRGB(250, 250, 250)
				temp.BackgroundTransparency = 1
			end
			wait(1)
			local NoobyDialogs = {"Now available in White! :O","such colors! Wow! :D","added a dumber steve :troll:", "### #### ######## ##", "also we can swear here but no >:(", "y'know this started a long time ago", "Btw watch out for TrainerGekko", "welcome to mario kart :D", "STEVE here needs aids", "hello "..game.Players.LocalPlayer.Name.."!", "Welcome to my script!", "ooh nice avatar tho", "JOIN OUR DISCORD1!11!1 :O :D ;P :)", "yoo!!"}
			local STEVEDialogs = {"ew "..game.Players.LocalPlayer.Name.." stinks", "Yo Nooby say the n word", "we also added a dumber nooby", "nooby shall not sleep", "Also Nooby dont forget your cocaine :D", "My brain is enlarging, never shrinks", "If I can prove that I never-", "uwu ;)", "nooby gets exposed for saying \"daddy\"", game.Players.LocalPlayer.Name.." needs a shout out lol", "Welcome to OUR script!", "Feel yourself at home lol"}
			chatPerson("Nooby", NoobyDialogs[math.random(1, #NoobyDialogs)])
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1.25)
			wait(2)
			chatPerson("STEVE", STEVEDialogs[math.random(1, #STEVEDialogs)])
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			wait(2)
			isDone = true
		end)
	},
	{
		Name = "RandomGameIntro",
		BoxColor = Color3.new(1, 1, 1),
		RequiresGetSyn = false,
		AnimationFunction = (function(workplace)
			local isDone = false
			spawn(function()
				while not isDone do
					game["Run Service"].RenderStepped:Wait()
					local UpperCornerThing, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.FloorBox.Position + (workplace.FloorBox.Size * Vector3.new(0.25, 0.5, -0.5)))
					local LowerCornerThing, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.FloorBox.Position + (workplace.FloorBox.Size * Vector3.new(-0.25, -0.5, -0.5)))
					workplace.IntroName.Position = UDim2.new(UpperCornerThing.X, 0, UpperCornerThing.Y, 0)
					workplace.IntroName.Size = UDim2.new(LowerCornerThing.X - UpperCornerThing.X, 0, LowerCornerThing.Y - UpperCornerThing.Y, 0)
				end
			end)
			workplace.IntroName.Text = "do not distract or else"
			local chatClock = 0
			spawn(function()
				local NoobyChat = (function(name, target)
					local FrameChatList = Instance.new("Frame", workplace)
					FrameChatList.Name = "BubbleChat-"..name
					FrameChatList.AnchorPoint = Vector2.new(0.5, 1)
					FrameChatList.Size = UDim2.new(0, 100, 0, 100)
					FrameChatList.BackgroundTransparency = 1
					spawn(function()
						while not isDone do
							game["Run Service"].RenderStepped:Wait()
							local lol, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.Nooby["Head"].Position + Vector3.new(0, 2, 0))
							FrameChatList.Position = UDim2.new(lol.X, 0, lol.Y, 0)
						end
					end)
					local temp = Instance.new("UIPadding", FrameChatList)
					temp.PaddingBottom = UDim.new(0, 8)
					temp.PaddingTop = UDim.new(0, 0)
					temp.PaddingLeft = UDim.new(0, 0)
					temp.PaddingRight = UDim.new(0, 0)
					local temp = Instance.new("UIListLayout", FrameChatList)
					temp.Padding = UDim.new(0, 6)
					temp.FillDirection = Enum.FillDirection.Vertical
					temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
					temp.SortOrder = Enum.SortOrder.LayoutOrder
					temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
					return FrameChatList
				end)("Nooby", workplace.Nooby.Head)
				local STEVEChat = (function(name, target)
					local FrameChatList = Instance.new("Frame", workplace)
					FrameChatList.Name = "BubbleChat-"..name
					FrameChatList.AnchorPoint = Vector2.new(0.5, 1)
					FrameChatList.Size = UDim2.new(0, 100, 0, 100)
					FrameChatList.BackgroundTransparency = 1
					spawn(function()
						while not isDone do
							game["Run Service"].RenderStepped:Wait()
							local lol, _ = workplace.CurrentCamera:WorldToViewportPoint(workplace.STEVE["Head"].Position + Vector3.new(0, 2, 0))
							FrameChatList.Position = UDim2.new(lol.X, 0, lol.Y, 0)
						end
					end)
					local temp = Instance.new("UIPadding", FrameChatList)
					temp.PaddingBottom = UDim.new(0, 8)
					temp.PaddingTop = UDim.new(0, 0)
					temp.PaddingLeft = UDim.new(0, 0)
					temp.PaddingRight = UDim.new(0, 0)
					local temp = Instance.new("UIListLayout", FrameChatList)
					temp.Padding = UDim.new(0, 6)
					temp.FillDirection = Enum.FillDirection.Vertical
					temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
					temp.SortOrder = Enum.SortOrder.LayoutOrder
					temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
					return FrameChatList
				end)("STEVE", workplace.STEVE.Head)
				while not isDone do
					chatClock += game["Run Service"].RenderStepped:Wait()
					for _,chat in pairs(NoobyChat:GetChildren()) do
						if chat.Name == "epic bubble chat lol" then
							if chatClock - chat.Value.Value > 5 and chat:FindFirstChild("IsClosing") == nil then
								Instance.new("BoolValue", chat).Name = "IsClosing"
								game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
								spawn(function()
									wait(0.5)
									chat:Destroy()
								end)
							end
						end
					end
					for _,chat in pairs(STEVEChat:GetChildren()) do
						if chat.Name == "epic bubble chat lol" then
							if chatClock - chat.Value.Value > 5 and chat:FindFirstChild("IsClosing") == nil then
								Instance.new("BoolValue", chat).Name = "IsClosing"
								game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
								spawn(function()
									wait(0.5)
									chat:Destroy()
								end)
							end
						end
					end
				end
				for _,chat in pairs(NoobyChat:GetChildren()) do
					if chat.Name == "epic bubble chat lol" then
						game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
						spawn(function()
							wait(0.5)
							chat:Destroy()
						end)
					end
				end
				for _,chat in pairs(STEVEChat:GetChildren()) do
					if chat.Name == "epic bubble chat lol" then
						game.TweenService:Create(chat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 0, 0)}):Play()
						spawn(function()
							wait(0.5)
							chat:Destroy()
						end)
					end
				end
				wait(2)
				NoobyChat:Destroy()
				STEVEChat:Destroy()
			end)
			local chatPerson = function(person, text)
				local BubbleChatFrame = workplace:FindFirstChild("BubbleChat-"..person)
				local NewBubbleChat = Instance.new("Frame", BubbleChatFrame)
				local textsize = game.TextService:GetTextSize(text, 16, Enum.Font.GothamMedium, Vector2.new(99999, 50)).X + 25
				NewBubbleChat.Name = "epic bubble chat lol"
				NewBubbleChat.AnchorPoint = Vector2.new(0.5, 0.5)
				NewBubbleChat.Size = UDim2.new(0, textsize, 0, 0)
				NewBubbleChat.LayoutOrder = chatClock
				NewBubbleChat.Transparency = 1
				NewBubbleChat.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
				Instance.new("NumberValue", NewBubbleChat).Value = chatClock
				game.TweenService:Create(NewBubbleChat, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, textsize, 0, 32)}):Play()
				local temp = Instance.new("UIListLayout", NewBubbleChat)
				temp.Padding = UDim.new(0, -1)
				temp.FillDirection = Enum.FillDirection.Vertical
				temp.HorizontalAlignment = Enum.HorizontalAlignment.Center
				temp.SortOrder = Enum.SortOrder.LayoutOrder
				temp.VerticalAlignment = Enum.VerticalAlignment.Top
				local chat = Instance.new("ImageLabel", NewBubbleChat)
				chat.BackgroundTransparency = 0.1
				chat.ImageTransparency = 0.1
				chat.LayoutOrder = 1
				chat.Size = UDim2.new(1, 0, 1, 0)
				chat.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
				local temp = Instance.new("UIPadding", chat)
				temp.PaddingLeft = UDim.new(0, 8)
				temp.PaddingRight = UDim.new(0, 8)
				temp.PaddingBottom = UDim.new(0, 8)
				temp.PaddingTop = UDim.new(0, 8)
				local temp = Instance.new("UICorner", chat)
				temp.CornerRadius = UDim.new(0, 12)
				local temp = Instance.new("UIListLayout", chat)
				temp.Padding = UDim.new(0, 8)
				temp.FillDirection = Enum.FillDirection.Horizontal
				temp.HorizontalAlignment = Enum.HorizontalAlignment.Left
				temp.SortOrder = Enum.SortOrder.LayoutOrder
				temp.VerticalAlignment = Enum.VerticalAlignment.Bottom
				local temp = Instance.new("TextLabel", chat)
				temp.AnchorPoint = Vector2.new(0.5, 0.5)
				temp.Size = UDim2.new(1, 0, 1, 0)
				temp.Font = Enum.Font.GothamMedium
				temp.TextWrapped = true
				temp.Text = text
				temp.TextSize = 16
				temp.TextTransparency = 0.1
				temp.TextColor3 = Color3.fromRGB(57, 59, 61)
				temp.BackgroundTransparency = 1
				local temp = Instance.new("ImageLabel", NewBubbleChat)
				temp.LayoutOrder = 2
				temp.Size = UDim2.new(0, 9, 0, 6)
				temp.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
				temp.ImageColor3 = Color3.fromRGB(250, 250, 250)
				temp.BackgroundTransparency = 1
			end
			workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(4.5, 0.0780000091, -0.5, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			workplace["Nooby"]["Torso"].CFrame = CFrame.new(4.5, 0.0780000091, -0.5, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(4.5, 0.0780000091, 1, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(2.92309403, 0.578000069, -1.26901436, -0.555570304, 0.831469536, 0, 0, 0, -1, -0.831469536, -0.555570304, 0)
			workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(3.59754515, -0.931607366, 5.21540642e-08, -4.37113883e-08, 0.195090324, 0.980785251, 0, 0.980785251, -0.195090324, -1, -8.52766924e-09, -4.28714841e-08)
			workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(5, -1.42199993, -1, -4.37113883e-08, -0.980785251, 0.195090324, 0, 0.195090324, 0.980785251, -1, 4.28714841e-08, -8.52766924e-09)
			workplace["Nooby"]["Head"].CFrame = CFrame.new(4.40245485, 1.56839252, -0.5, -4.37113883e-08, -0.195090353, 0.980785251, 0, 0.980785251, 0.195090353, -1, 8.52767013e-09, -4.28714841e-08)
			workplace["STEVE"]["HumanoidRootPart"].CFrame = CFrame.new(-4.5, 0.0780000091, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
			workplace["STEVE"]["Torso"].CFrame = CFrame.new(-4.5, 0.0780000091, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
			workplace["STEVE"]["Left Arm"].CFrame = CFrame.new(-3.88188171, 0.269341886, -1.28516293, -0.382683486, -0.853553414, 0.353553325, 0, -0.382683396, -0.923879564, 0.923879504, -0.353553474, 0.146446615)
			workplace["STEVE"]["Right Arm"].CFrame = CFrame.new(-3.94939065, 0.269341886, 1.40027261, 0.195090368, -0.906127691, 0.375330329, 0, -0.382683396, -0.923879564, 0.980785489, 0.180239916, -0.0746578127)
			workplace["STEVE"]["Left Leg"].CFrame = CFrame.new(-3.59754515, -0.931607366, -0.5, -4.28714841e-08, -0.195090324, -0.980785251, -8.52766924e-09, 0.980785251, -0.195090324, 1, 0, -4.37113883e-08)
			workplace["STEVE"]["Right Leg"].CFrame = CFrame.new(-5, -1.42199993, 0.5, -8.52767101e-09, 0.98078537, -0.195090398, 4.28714841e-08, 0.195090383, 0.98078537, 1, 0, -4.37113883e-08)
			workplace["STEVE"]["Head"].CFrame = CFrame.new(-4.40245485, 1.56839275, 7.4505806e-09, -4.37113883e-08, 0.195090324, -0.980785251, 0, 0.980785251, 0.195090324, 1, 8.52766924e-09, -4.28714841e-08)
			workplace["STEVE"]["Head"]["Handle"].CFrame = CFrame.new(-4.35632372, 1.80911922, 0.00321794301, -4.37113883e-08, 0.195090324, -0.980785251, 0, 0.980785251, 0.195090324, 1, 8.52766924e-09, -4.28714841e-08)
			local PhysicsObjects = {}
			local PhyObjectsContainer = Instance.new("Model", workspace.Model)
			local FloorBoxWorkspace = workplace.FloorBox:Clone()
			local HoldingNooby = nil
			FloorBoxWorkspace.Parent = PhyObjectsContainer
			FloorBoxWorkspace.Position = Vector3.new(1000, 996.5, 1000)
			FloorBoxWorkspace.Anchored = true
			FloorBoxWorkspace.Transparency = 1
			local rootPos = Vector3.new(0, -2, 0)
			local temprand = Random.new(18238098)
			for i=1, 10 do
				if i%2 == 0 then
					for x=0, 6 do
						local VirtualPart = Instance.new("Part", workplace)
						VirtualPart.Name = "a physicspart of brookhaven, totally handle"
						VirtualPart.Position = rootPos + Vector3.new((x * 0.5) - 1.5, (i * 0.5) - 1, 0)
						VirtualPart.Size = Vector3.new(0.5, 0.5, 3.5)
						VirtualPart.BottomSurface = Enum.SurfaceType.Smooth
						VirtualPart.TopSurface = Enum.SurfaceType.Smooth
						local grayScale = temprand:NextInteger(100, 255)
						VirtualPart.Color = Color3.fromRGB(grayScale, grayScale, grayScale)
						local PhysicsPart = VirtualPart:Clone()
						PhysicsPart.Parent = PhyObjectsContainer
						PhysicsPart.Position += Vector3.new(1000, 1000, 1000)
						PhysicsPart.Transparency = 1
						table.insert(PhysicsObjects, {PhysicsPart, VirtualPart})
					end
				else
					for x=0, 6 do
						local VirtualPart = Instance.new("Part", workplace)
						VirtualPart.Name = "a physicspart of brookhaven, totally handle"
						VirtualPart.Position = rootPos + Vector3.new(0, (i * 0.5) - 1, (x * 0.5) - 1.5)
						VirtualPart.Size = Vector3.new(3.5, 0.5, 0.5)
						VirtualPart.BottomSurface = Enum.SurfaceType.Smooth
						VirtualPart.TopSurface = Enum.SurfaceType.Smooth
						local grayScale = temprand:NextInteger(100, 255)
						VirtualPart.Color = Color3.fromRGB(grayScale, grayScale, grayScale)
						local PhysicsPart = VirtualPart:Clone()
						PhysicsPart.Parent = PhyObjectsContainer
						PhysicsPart.Position += Vector3.new(1000, 1000, 1000)
						PhysicsPart.Transparency = 1
						table.insert(PhysicsObjects, {PhysicsPart, VirtualPart})
					end
				end
			end
			spawn(function()
				local sounded = 0
				while not isDone do
					game["Run Service"].Heartbeat:Wait()
					for _,p in pairs(PhysicsObjects) do
						p[2].CFrame = p[1].CFrame - Vector3.new(1000, 1000, 1000)
						p[1].Transparency = 0
						if #p[1]:GetTouchingParts() > 0 and p[1].AssemblyLinearVelocity.Magnitude > 0.25 and sounded < 16 then
							sounded += 1
							playSoundLocal("rbxasset://sounds/plasticplastic"..({"","2","3"})[math.random(1,3)]..".ogg", (p[1].AssemblyLinearVelocity.Magnitude / 50) * math.max(1/(p[2].Position - workplace.CurrentCamera.CFrame.Position).Magnitude, 1), math.random(90, 110) / 100)
							spawn(function()
								wait(1)
								sounded -= 1
							end)
						end
					end
				end
				PhyObjectsContainer:Destroy()
			end)
			local temp = RaycastParams.new()
			temp.FilterType = Enum.RaycastFilterType.Whitelist
			temp.FilterDescendantsInstances = {PhyObjectsContainer}
			temprand = Random.new(69420)
			for i=1, 3 do 
				local removed = false
				while not removed do
					local direction = Vector3.new(10, temprand:NextInteger(-10, 10), temprand:NextInteger(-10, 10))
					local raycast = workspace:Raycast(workplace.STEVE.HumanoidRootPart.Position + Vector3.new(1000, 1000, 1000), direction, temp)
					if raycast ~= nil and raycast.Instance ~= FloorBoxWorkspace then
						raycast.Instance.Position = Vector3.new(995.5, 997.5 + (i * 0.5), 998)
						if raycast.Instance.Size.X > raycast.Instance.Size.Z then
							raycast.Instance.Orientation = Vector3.new(0, 0, 0)
						else
							raycast.Instance.Orientation = Vector3.new(0, 90, 0)
						end
						removed = true
					end
				end
			end
			for i=1, 2 do 
				local removed = false
				while not removed do
					local direction = Vector3.new(-10, temprand:NextInteger(-10, 10), temprand:NextInteger(-10, 10))
					local raycast = workspace:Raycast(workplace.Nooby.HumanoidRootPart.Position + Vector3.new(1000, 1000, 1000), direction, temp)
					if raycast ~= nil and raycast.Instance ~= FloorBoxWorkspace then
						raycast.Instance.Position = Vector3.new(1004.5, 997.5 + (i * 0.5), 998)
						if raycast.Instance.Size.X > raycast.Instance.Size.Z then
							raycast.Instance.Orientation = Vector3.new(0, 0, 0)
						else
							raycast.Instance.Orientation = Vector3.new(0, 90, 0)
						end
						removed = true
					end
				end
			end
			wait(1)
			chatPerson("Nooby", "ok my turn now")
			HoldingNooby = workspace:Raycast((workplace.Nooby["Right Arm"].Position + Vector3.new(1000, 1000, 1000)) + (workplace.Nooby["Right Arm"].CFrame.LookVector * -0.5) + (workplace.Nooby["Right Arm"].CFrame.UpVector * -1.5), workplace.Nooby["Right Arm"].CFrame.LookVector * 1, temp).Instance
			HoldingNooby.Anchored = true
			wait(1)
			chatPerson("STEVE", "oh yea ur turn")
			wait(1)
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.5, 0.0780000091, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.21484995, 0.210393906, 0.0240492821, 0.022345202, 0.187732369, -0.981966078, -0.0509011075, 0.981150985, 0.186418295, 0.998453736, 0.0458175987, 0.031479802)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.70370269, 0.233393252, -1.40008378, -0.247881532, -0.574191868, -0.780293822, -0.137949646, 0.818143785, -0.558220923, 0.958918512, -0.0307314005, -0.282012284)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.32001114, 0.0848231167, 0.803180575, 0.789965212, -0.488047421, -0.371166825, -0.316281497, 0.194246396, -0.92856586, 0.525281966, 0.85092777, -0.000912471267)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.59754515, -0.931607366, -0.5, -4.28714841e-08, -0.195090324, -0.980785251, -8.52766924e-09, 0.980785251, -0.195090324, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5, -1.42199993, 0.5, -8.52767101e-09, 0.98078537, -0.195090398, 4.28714841e-08, 0.195090383, 0.98078537, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.71881723, 1.54853094, 0.235734358, -0.526971757, 0.616599858, -0.584897578, 0.061246153, 0.713971913, 0.697490871, 0.847673297, 0.331735015, -0.414007276)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.5703826, 1.72492492, 0.319052517, -0.526968956, 0.616602123, -0.584897935, 0.0612511225, 0.713973045, 0.697488904, 0.847674489, 0.331729382, -0.414009184)}):Play()
			wait(math.random(50, 200) / 100)
			for i=1, 180 do
				if i%50 == 0 then
					chatPerson("Nooby", "very")
				end
				game["Run Service"].RenderStepped:Wait()
				workplace.Nooby["Right Arm"].Position += workplace.Nooby["Right Arm"].CFrame.UpVector * 0.005
				HoldingNooby.Position += Vector3.new(0.005, 0, 0)
				HoldingNooby.AssemblyLinearVelocity = Vector3.new(0.005, 0, 0)
			end
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.5, 0.0780000091, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.66619492, 0.150623411, -7.2646329e-09, -4.37113883e-08, -0.195090353, -0.98078537, 0, 0.98078537, -0.195090353, 1, -8.52767013e-09, -4.28714912e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.85559487, -0.0195448399, -1.27427459, -0.382683486, -0.906127512, -0.180240065, 1.49011612e-08, 0.195090324, -0.980785251, 0.923879504, -0.375330418, -0.0746578425)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.0556941, -0.275553465, 1.42141807, 0.195090532, -0.693520188, -0.69352001, 0, 0.707107246, -0.707106948, 0.980785906, 0.137949571, 0.13794978)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.59754515, -0.931607366, -0.5, -4.28714841e-08, -0.195090324, -0.980785251, -8.52766924e-09, 0.980785251, -0.195090324, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5, -1.42199993, 0.5, -8.52767101e-09, 0.98078537, -0.195090398, 4.28714841e-08, 0.195090383, 0.98078537, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.86609745, 1.54689348, 0.0710162148, 0.640728831, -0.403348237, -0.653281093, 0.180239946, 0.906127512, -0.382683367, 0.746310711, 0.127448946, 0.653281271)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.96402836, 1.7689085, 0.105777875, 0.640728831, -0.403345525, -0.653280377, 0.180242509, 0.906129837, -0.382677466, 0.746308386, 0.127443686, 0.653281987)}):Play()
			chatPerson("Nooby", "gently")
			local BallSpawmed = nil
			spawn(function()
				local VirtualPart = Instance.new("Part", workplace)
				VirtualPart.Name = "a physicspart of brookhaven, totally handle"
				VirtualPart.Position = rootPos + Vector3.new(0, 200, 0)
				VirtualPart.Size = Vector3.new(3.5, 0.5, 0.5)
				VirtualPart.AssemblyLinearVelocity = Vector3.yAxis * -50
				VirtualPart.Shape = Enum.PartType.Ball
				VirtualPart.BottomSurface = Enum.SurfaceType.Smooth
				VirtualPart.TopSurface = Enum.SurfaceType.Smooth
				local PhysicsPart = VirtualPart:Clone()
				PhysicsPart.Parent = PhyObjectsContainer
				PhysicsPart.Position += Vector3.new(1000, 1000, 1000)
				PhysicsPart.Transparency = 1
				BallSpawmed = VirtualPart
				table.insert(PhysicsObjects, {PhysicsPart, VirtualPart})
			end)
			repeat
				game["Run Service"].RenderStepped:Wait()
				workplace.Nooby["Right Arm"].Position += workplace.Nooby["Right Arm"].CFrame.UpVector * 0.01
				HoldingNooby.Position += Vector3.new(0.01, 0, 0)
			until BallSpawmed ~= nil and BallSpawmed.Position.Y <= 5
			chatPerson("Nooby", "AAAAAAAAAAA")
			playSoundLocal("rbxassetid://2200499796", 10, 1)
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4.5, 0.0780000091, -0.5, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4.53613138, 0.107390106, -0.5, -4.28714841e-08, 0.195090324, 0.980785251, 8.52766924e-09, 0.980785251, -0.195090324, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4.82501841, 1.05972254, 1, 4.03840588e-08, -0.382683367, -0.923879504, -1.6727622e-08, -0.923879504, 0.382683367, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4.82501841, 1.05972254, -2, 7.90321124e-08, -0.382683426, -0.923879445, 7.36864934e-08, -0.923879445, 0.382683426, -1, -9.83217348e-08, -4.48175506e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(3.59754515, -0.931607366, 5.21540642e-08, -4.37113883e-08, 0.195090324, 0.980785251, 0, 0.980785251, -0.195090324, -1, -8.52766924e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(5, -1.42199993, -1, -4.37113883e-08, -0.980785251, 0.195090324, 0, 0.195090324, 0.980785251, -1, 4.28714841e-08, -8.52766924e-09)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(4.73122358, 1.58817518, -0.49999997, -3.6344705e-08, -5.56583431e-17, 1.00000024, 2.4284752e-08, 1.00000036, 8.94069672e-08, -1, 2.42847555e-08, -3.63446802e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-4.5, 0.0780000091, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-4.67261553, 0.0780000091, 0, -4.28714841e-08, -0.195090353, -0.98078537, -8.52766924e-09, 0.98078537, -0.195090368, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.8400209, 0.770405054, -0.834447026, -0.898755491, -0.421202898, 0.121765912, 0.121765926, -0.506576419, -0.853553414, 0.421202928, -0.752308726, 0.506576419)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.83812618, 0.802994192, 0.893697739, 0.820969045, -0.502778947, 0.270597756, 0.074657917, -0.375329912, -0.923879802, 0.566070616, 0.778678954, -0.270597756)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-3.59754515, -0.931607366, -0.5, -4.28714841e-08, -0.195090324, -0.980785251, -8.52766924e-09, 0.980785251, -0.195090324, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-5, -1.42199993, 0.5, -8.52767101e-09, 0.98078537, -0.195090398, 4.28714841e-08, 0.195090383, 0.98078537, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-5, 1.55229509, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.25, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = CFrame.new(-5.00080442, 1.79732811, 0.0069655776, 0, 0, -0.99999994, 0, 0.99999994, 0, 1, 0, 0)}):Play()
			HoldingNooby.Anchored = false
			wait(1.8)
			chatPerson("STEVE", "WOAH")
			playSoundLocal("rbxassetid://8473033909", 1, 1)
			wait(2)
			chatPerson("STEVE", "Where the hell did that come from?")
			playSoundLocal("rbxassetid://688859411", 1, 1)
			wait(1)
			chatPerson("Nooby", "Did you plan this too, STEVE?")
			playSoundLocal("rbxassetid://8473033909", 1, 1)
			playSoundLocal("rbxassetid://5121712433", 1, 1)
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.5, 0.0780000091, -0.5, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.5, 0.0780000091, -0.5, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.22221422, 0.162265301, 1, 4.28714984e-08, 0.555570245, 0.831469715, -8.52767101e-09, 0.831469715, -0.555570245, -1, 1.67276308e-08, 4.03840659e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.5, 0.578000546, -2, 6.31380104e-08, 0.999999881, 7.23622957e-15, 8.76890098e-08, 4.21519721e-15, -0.999999881, -1, 6.31379748e-08, -8.7689024e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.59754515, -0.931607366, 5.21540642e-08, -4.37113883e-08, 0.195090324, 0.980785251, 0, 0.980785251, -0.195090324, -1, -8.52766924e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(5, -1.42199993, -1, -4.37113883e-08, -0.980785251, 0.195090324, 0, 0.195090324, 0.980785251, -1, 4.28714841e-08, -8.52766924e-09)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.50000048, 1.57799983, -0.5, -4.28714841e-08, -2.98023224e-08, 0.99999994, 8.52766924e-09, 0.99999994, 2.98023224e-08, -1, 8.52767013e-09, -4.28714841e-08)}):Play()
			wait(2.5)
			chatPerson("STEVE", "Erm,... no?")
			playSoundLocal("rbxassetid://7989920666", 1, 1)
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4, 0.0780000091, -0.49999997, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4, 0.192069739, -0.49999997, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.35355282, 0.338516235, 1, 4.28715055e-08, -0.707106948, 0.707106948, -8.52767812e-09, 0.707106948, 0.707106948, -1, -3.63447086e-08, 2.42847484e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3, 0.692070305, -2, 6.31380104e-08, 0.999999881, 7.23622957e-15, 8.76890098e-08, 4.21519721e-15, -0.999999881, -1, 6.31379748e-08, -8.7689024e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.43936133, -1.05603361, 1.05972386e-08, -4.37113954e-08, -0.382683516, 0.923879564, 0, 0.923879564, 0.382683516, -1, 1.67276308e-08, -4.03840659e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(5.01415491, -1.40007901, -1, -4.37113883e-08, -0.98078531, 0.195090339, 0, 0.195090339, 0.98078531, -1, 4.28714877e-08, -8.52766924e-09)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.00000048, 1.69206953, -0.49999997, -4.28714841e-08, -2.98023224e-08, 0.99999994, 8.52766924e-09, 0.99999994, 2.98023224e-08, -1, 8.52767013e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.5, 0.0780000091, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.67261553, 0.0780000091, 0, -4.28714841e-08, -0.195090353, -0.98078537, -8.52766924e-09, 0.98078537, -0.195090368, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.82228994, 0.460594118, -1.16408587, -0.513271391, -0.842149973, -0.165336683, 0.105596676, 0.129215255, -0.985978425, 0.851705551, -0.523533344, 0.022605719)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.81160164, 0.52443403, 1.15244436, 0.547404766, -0.829391658, -0.111612692, 0.073146075, 0.180277467, -0.980892599, 0.833665669, 0.528781354, 0.159351438)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-3.59754515, -0.931607366, -0.5, -4.28714841e-08, -0.195090324, -0.980785251, -8.52766924e-09, 0.980785251, -0.195090324, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5, -1.42199993, 0.5, -8.52767101e-09, 0.98078537, -0.195090398, 4.28714841e-08, 0.195090383, 0.98078537, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5, 1.54268765, 0.0975451618, 0, 0, -1, -0.195090324, 0.980785251, 0, 0.980785251, 0.195090324, 0)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.00080442, 1.78165364, 0.152180448, 0, 0, -0.99999994, -0.195090324, 0.980785191, 0, 0.980785251, 0.195090309, 0)}):Play()
			wait(0.5)
			chatPerson("Nooby", "You definitely planned this! 100%!")
			playSoundLocal("rbxassetid://8473033909", 1, 1.1)
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4, 0.0780000091, -0.49999997, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.875, 0.192069739, -0.49999997, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.22855282, 0.338516235, 1, 4.28715055e-08, -0.707106948, 0.707106948, -8.52767812e-09, 0.707106948, 0.707106948, -1, -3.63447086e-08, 2.42847484e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(2.87500024, 0.692070246, -2, 6.31380388e-08, 0.999999642, 4.7207539e-15, 8.76889814e-08, 6.73067415e-15, -0.999999642, -1, 6.31379322e-08, -8.76890311e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(2.71135402, -1.0206033, 4.24194759e-08, -4.37113954e-08, 0.555570245, 0.831469715, -3.55271368e-15, 0.831469715, -0.555570245, -1, -2.42847555e-08, -3.63446979e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.20728207, -1.36213303, -1, -4.37113883e-08, -0.923879564, 0.382683486, -1.77635684e-15, 0.382683486, 0.923879564, -1, 4.03840623e-08, -1.67276273e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.62500048, 1.69206953, -0.49999997, -4.28714841e-08, -2.98023224e-08, 0.99999994, 8.52766924e-09, 0.99999994, 2.98023224e-08, -1, 8.52767013e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.5, 0.0780000091, -4.37113883e-08, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.67261553, 0.0780000091, -4.37113847e-08, -4.28714841e-08, -0.195090353, -0.98078537, -8.52766924e-09, 0.98078537, -0.195090368, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.87987232, 0.86881876, -0.824312031, -0.866824389, -0.373430848, 0.330401182, -0.156840265, -0.424797028, -0.891599178, 0.473303795, -0.824679852, 0.309655547)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.9855423, 0.924089968, 0.660069704, 0.949565232, -0.0793519244, 0.30336383, 0.235996306, -0.456184208, -0.858022153, 0.206475511, 0.886340559, -0.414449781)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.29591417, -1.31474102, -0.500000119, -4.28714806e-08, 0.831469536, -0.555570424, -8.52766746e-09, 0.555570424, 0.831469536, 1, 4.03840517e-08, -1.67276308e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.57759476, -0.884169102, 0.5, -8.52767457e-09, -0.382683456, -0.923879385, 4.28714806e-08, 0.923879385, -0.382683456, 1, -4.28714806e-08, 8.5276568e-09)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.125, 1.55229497, -4.37113918e-08, 0, 0, -1, 0, 0.999999881, 0, 0.999999881, 0, 0)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.12580442, 1.79732823, 0.00696554687, 0, 0, -0.99999994, -1.49011576e-08, 0.999999285, 0, 0.999999404, 0, 0)}):Play()
			wait(0.5)
			playSoundLocal("rbxasset://sounds/uuhhh.wav", 1, 1)
			wait(2.9)
			chatPerson("STEVE", "What? How are you so sure?")
			playSoundLocal("rbxasset://sounds/button.wav", 1, 1)
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4, 0.0780000091, -0.49999997, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.875, 0.192069739, -0.49999997, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(4.22855282, 0.338516235, 1, 4.28715055e-08, -0.707106948, 0.707106948, -8.52767812e-09, 0.707106948, 0.707106948, -1, -3.63447086e-08, 2.42847484e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(2.87500024, 0.692070246, -2, 6.31380388e-08, 0.999999642, 4.7207539e-15, 8.76889814e-08, 6.73067415e-15, -0.999999642, -1, 6.31379322e-08, -8.76890311e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.94879079, -1.19737911, -1.16705969e-08, -4.37114025e-08, -0.707107067, 0.70710659, -5.32907052e-15, 0.70710659, 0.707107067, -1, 3.09086374e-08, -3.09086268e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.37414789, -1.01805758, -0.99999994, -4.37113847e-08, -0.195090264, 0.98078537, -3.55271368e-15, 0.98078537, 0.195090264, -1, 8.52766213e-09, -4.28714877e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.62500048, 1.69206953, -0.49999997, -4.28714841e-08, -2.98023224e-08, 0.99999994, 8.52766924e-09, 0.99999994, 2.98023224e-08, -1, 8.52767013e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.5, 0.0780000091, -4.37113883e-08, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.67261553, 0.0780000091, -4.37113847e-08, -4.28714841e-08, -0.195090353, -0.98078537, -8.52766924e-09, 0.98078537, -0.195090368, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.17870474, 0.130088806, -1.44288325, -0.0979330689, -0.544654548, -0.832923055, 0.0640613139, 0.831760406, -0.55142653, 0.993129373, -0.107361011, -0.0465655401)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.0259428, 0.638768554, 1.52113223, -0.0500514358, -0.998164833, 0.0340817086, 0.0833577812, -0.0381803885, -0.995788097, 0.995262146, -0.0469997227, 0.0851157904)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.29591417, -1.31474102, -0.500000119, -4.28714806e-08, 0.831469536, -0.555570424, -8.52766746e-09, 0.555570424, 0.831469536, 1, 4.03840517e-08, -1.67276308e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.57759476, -0.884169102, 0.5, -8.52767457e-09, -0.382683456, -0.923879385, 4.28714806e-08, 0.923879385, -0.382683456, 1, -4.28714806e-08, 8.5276568e-09)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.125, 1.54268742, -0.0975451618, 0, 0, -1, 0.195090234, 0.980784893, 0, 0.980784893, -0.195090234, 0)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.12580442, 1.78437114, -0.138517007, 0, 0, -0.99999994, 0.195089936, 0.980783343, 0, 0.980783463, -0.195089921, 0)}):Play()
			wait(2.5)
			chatPerson("Nooby", "I know you always pick")
			playSoundLocal("rbxassetid://8473033909", 1, 1)
			playSoundLocal("rbxassetid://7251381246", 5, 1)
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.25, 0.953000009, -0.49999994, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.125, 1.06706977, -0.49999994, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.02745438, 1.07667708, 0.99999994, 4.28715197e-08, 0.195090503, 0.980785966, -8.52767101e-09, 0.980785966, -0.195090503, -1, 1.42108547e-14, 4.37114274e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(2.125, 1.56707025, -2, 6.31380388e-08, 0.999999642, 4.7207539e-15, 8.76889814e-08, 6.73067415e-15, -0.999999642, -1, 6.31379322e-08, -8.76890311e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.125, -0.921999991, 2.98023224e-08, 0, -1.26217745e-29, 1, 4.23516474e-22, 1, 1.26217745e-29, -1, 4.23516474e-22, 0)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.34580994, -0.875629187, -0.999999881, 0, -0.195090413, 0.980785608, 0, 0.980785608, 0.195090413, -1, 0, 0)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.12500048, 2.56706953, -0.49999994, -4.28714841e-08, -2.98023259e-08, 1, 8.52766924e-09, 1, 2.98023259e-08, -1, 8.52767013e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.5, 0.0780000091, -4.37113883e-08, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.67261553, 0.0780000091, -4.37113847e-08, -4.28714841e-08, -0.195090353, -0.98078537, -8.52766924e-09, 0.98078537, -0.195090368, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.88564539, 1.09822607, -0.909525931, -0.722032845, -0.278689057, 0.633246362, -0.222385913, -0.773224354, -0.593859076, 0.655143559, -0.569610834, 0.49631682)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.91922426, 1.0498389, 0.689648807, 0.879168093, -0.13447684, 0.45714277, 0.245976791, -0.693577468, -0.677086174, 0.40811637, 0.707719028, -0.576692998)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.29591417, -1.31474102, -0.500000119, -4.28714806e-08, 0.831469536, -0.555570424, -8.52766746e-09, 0.555570424, 0.831469536, 1, 4.03840517e-08, -1.67276308e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.57759476, -0.884169102, 0.5, -8.52767457e-09, -0.382683456, -0.923879385, 4.28714806e-08, 0.923879385, -0.382683456, 1, -4.28714806e-08, 8.5276568e-09)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.07080746, 1.54268193, -0.0811064541, 0.709189355, 0.108386368, -0.696636677, 0.0380602367, 0.980785429, 0.191341698, 0.703989744, -0.162211716, 0.691437423)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.03987217, 1.78340793, -0.115391612, 0.709188461, 0.108384743, -0.696636021, 0.0380601659, 0.980785906, 0.19133912, 0.70398891, -0.162210107, 0.691437244)}):Play()
			wait(0.75)
			chatPerson("Nooby", "balls on parts,")
			playSoundLocal("rbxassetid://8473033909", 1, 1)
			playSoundLocal("rbxassetid://7251381246", 5, 0.891)
			wait(0.75)
			chatPerson("Nooby", "idoit!")
			playSoundLocal("rbxassetid://8473033909", 1, 1)
			playSoundLocal("rbxassetid://7251381246", 5, 1.059)
			wait(0.75)
			playSoundLocal("rbxassetid://336771379", 5, 1)
			wait(2.25)
			playSoundLocal("rbxassetid://8449305114", 1, 1)
			chatPerson("STEVE", "haha that was actually planned")
			game.TweenService:Create(workplace["Nooby"]["HumanoidRootPart"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.25, 0.953000009, -0.49999994, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Torso"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.125, 1.06706977, -0.49999994, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.02745438, 1.07667708, 0.99999994, 4.28715197e-08, 0.195090503, 0.980785966, -8.52767101e-09, 0.980785966, -0.195090503, -1, 1.42108547e-14, 4.37114274e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(2.125, 1.56707025, -2, 6.31380388e-08, 0.999999642, 4.7207539e-15, 8.76889814e-08, 6.73067415e-15, -0.999999642, -1, 6.31379322e-08, -8.76890311e-08)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Left Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.125, -0.921999991, 2.98023224e-08, 0, -1.26217745e-29, 1, 4.23516474e-22, 1, 1.26217745e-29, -1, 4.23516474e-22, 0)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Right Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.34580994, -0.875629187, -0.999999881, 0, -0.195090413, 0.980785608, 0, 0.980785608, 0.195090413, -1, 0, 0)}):Play()
			game.TweenService:Create(workplace["Nooby"]["Head"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(3.12500048, 2.56706953, -0.49999994, -4.28714841e-08, -2.98023259e-08, 1, 8.52766924e-09, 1, 2.98023259e-08, -1, 8.52767013e-09, -4.28714841e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.5, 0.0780000091, -4.37113883e-08, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.78810024, 0.0301646218, -4.90703087e-08, -4.28714877e-08, -0.382683516, -0.923879743, -8.52766924e-09, 0.923879743, -0.382683575, 1, -8.5276719e-09, -4.28714877e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.96930313, 0.634471357, -1.31377923, -0.09793327, -0.977950752, 0.184449151, 0.0640611723, -0.191150472, -0.979468226, 0.993129134, -0.0841064751, 0.0813686401)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-5.03273964, 0.673693001, 1.31607211, 0.0591782816, -0.969913423, 0.236148596, 0.0102962507, -0.235957563, -0.971708775, 0.998194396, 0.0599355139, -0.00397709198)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.29591417, -1.31474102, -0.500000119, -4.28714806e-08, 0.831469536, -0.555570424, -8.52766746e-09, 0.555570424, 0.831469536, 1, 4.03840517e-08, -1.67276308e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-4.57759476, -0.884169102, 0.5, -8.52767457e-09, -0.382683456, -0.923879385, 4.28714806e-08, 0.923879385, -0.382683456, 1, -4.28714806e-08, 8.5276568e-09)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.4027853, 1.46802449, -9.61903197e-07, -2.08616228e-07, -0.555570602, -0.831469953, -1.15593135e-08, 0.83147049, -0.555570662, 0.999999285, -1.64574416e-08, 5.03558567e-07)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {CFrame = CFrame.new(-6.53957748, 1.67130589, 0.00696258899, -5.63698222e-06, -0.555571139, -0.831470013, -3.22517462e-06, 0.831471145, -0.555571139, 0.999998569, -2.32441351e-07, -5.13926898e-06)}):Play()
			wait(0.5)
			game.TweenService:Create(workplace["STEVE"]["HumanoidRootPart"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-5.5, 0.0780000091, -4.37113883e-08, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Left Arm"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-5.60631371, -0.00750807673, -1.26939285, -0.0979332104, -0.977950692, 0.184449077, 0.0640611798, -0.191150412, -0.979468048, 0.993129015, -0.0841064304, 0.081368655)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Arm"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-5.66975117, 0.0317135081, 1.36046028, 0.0591782816, -0.969913244, 0.236148551, 0.0102962488, -0.235957474, -0.971708894, 0.998194396, 0.0599354953, -0.00397709012)}):Play()
			wait(0.02)
			game.TweenService:Create(workplace["STEVE"]["Head"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-7.28032303, 0.736859918, -3.72110389e-06, -2.53853295e-06, -0.831468582, -0.555571735, -1.46106481e-06, 0.555571735, -0.831468582, 1, -1.29898422e-06, -2.62516687e-06)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Head"]["Handle"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-7.48450089, 0.872325301, 0.00696024159, -9.5972182e-06, -0.83146733, -0.555573761, -1.00375955e-05, 0.555573821, -0.83146733, 1, -2.40314876e-06, -1.36778945e-05)}):Play()
			wait(0.02)
			game.TweenService:Create(workplace["STEVE"]["Left Leg"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-6.24714088, -1.55993736, -0.500000119, -4.2871477e-08, 0.980785251, -0.195090562, -8.52766835e-09, 0.195090562, 0.980785251, 1, 4.37113812e-08, -9.53313475e-15)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Right Leg"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-4.75437117, -1.06094575, 0.5, -8.52766924e-09, -0.707106948, -0.707106769, 4.28714806e-08, 0.707106769, -0.707106948, 1, -3.63446873e-08, 2.42847484e-08)}):Play()
			game.TweenService:Create(workplace["STEVE"]["Torso"], TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 5, true, 0), {CFrame = CFrame.new(-6.3687644, -0.340214908, -1.53938163e-06, -1.82977305e-06, -0.555570006, -0.831469834, -1.00600892e-06, 0.831469774, -0.555570006, 1, -1.80100983e-07, -2.08030951e-06)}):Play()
			wait(1.5)
			chatPerson("STEVE", "get trolled idiot")
			playSoundLocal("rbxassetid://2665943889", 1, 1)
			local realName = "To Be Continued >>>"
			for i=1, realName:len() do
				workplace.IntroName.Text = realName:sub(1, i)
				playSoundLocal("rbxasset://sounds/switch.wav", 2, math.random(90, 110) / 100)
				wait(1/realName:len())
			end
			wait(0.5)
			chatPerson("STEVE", "GET TROLLED LMAO ;P")
			wait(0.5)
			chatPerson("Nooby", "well good thing ima smart")
			local realName = TheFullScriptName
			for i=1, realName:len() do
				workplace.IntroName.Text = realName:sub(1, i)
				playSoundLocal("rbxasset://sounds/SWITCH3.wav", 2, math.random(90, 110) / 100)
				wait(1/realName:len())
			end
			wait(2)
			isDone = true
		end)
	},
	{
		Name = "GetTurkeysOffTheMenuIntro",
		BoxColor = Color3.new(0.666667, 0.333333, 0),
		RequiresGetSyn = true,
		AnimationFunction = (function(workplace)
			wait(1)
			game.TweenService:Create(workplace.FloorBox, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {Size = Vector3.new(200, 3, 200)}):Play()
			if not isfile("STEVEIdeas_GetTurkeysOffTheMenuIntro_AUDIO.mp3") then
				local DOWNLOADING = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
				DOWNLOADING.SoundId = "rbxassetid://9043969850"
				DOWNLOADING.Playing = true
				workplace.IntroName.Position = UDim2.new(0.5, -100, 0.5, -50)
				workplace.IntroName.Size = UDim2.new(0, 200, 0, 100)
				workplace.IntroName.Text = "Downloading audio please wait!"
				local dehyta = httprequest("https://cdn.glitch.global/3fbc6d70-de6f-4bbd-ba6e-e447f6309c82/RDT_20230407_104632.mp3?v=1680835636581")
				writefile("STEVEIdeas_GetTurkeysOffTheMenuIntro_AUDIO.mp3", dehyta)
				for i=1, 0, -0.1 do
					wait()
					DOWNLOADING.Volume = i
				end
				DOWNLOADING:Destroy()
				workplace.IntroName.Text = ""
			end
			wait(0.5)
			local soundIDforIntro = getsynasset("STEVEIdeas_GetTurkeysOffTheMenuIntro_AUDIO.mp3")
			local IntroSound = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
			IntroSound.SoundId = soundIDforIntro
			local TablePlatform = Instance.new("Part", workplace)
			TablePlatform.Color = Color3.new(0.772549, 0.513725, 0)
			TablePlatform.Position = Vector3.new(0, 1.5, 0)
			TablePlatform.Size = Vector3.new(8, 1, 4)
			local TableLeg = Instance.new("Part", workplace)
			TableLeg.Color = Color3.new(0.772549, 0.513725, 0)
			TableLeg.Position = Vector3.new(3.5, -0.5, -1.5)
			TableLeg.Size = Vector3.new(1, 3, 1)
			TableLeg = Instance.new("Part", workplace)
			TableLeg.Color = Color3.new(0.772549, 0.513725, 0)
			TableLeg.Position = Vector3.new(3.5, -0.5, 1.5)
			TableLeg.Size = Vector3.new(1, 3, 1)
			TableLeg = Instance.new("Part", workplace)
			TableLeg.Color = Color3.new(0.772549, 0.513725, 0)
			TableLeg.Position = Vector3.new(-3.5, -0.5, 1.5)
			TableLeg.Size = Vector3.new(1, 3, 1)
			TableLeg = Instance.new("Part", workplace)
			TableLeg.Color = Color3.new(0.772549, 0.513725, 0)
			TableLeg.Position = Vector3.new(-3.5, -0.5, -1.5)
			TableLeg.Size = Vector3.new(1, 3, 1)
			workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
			workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.47117782, 4, -0.2926355, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
			workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.47117782, 4, 0.2926355, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
			workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
			workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
			workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.831469595, 0, -0.555570245, 0, 1, 0, 0.555570245, 0, 0.831469595)
			workplace["STEVE"]:PivotTo(CFrame.new(-7, 1, -2.5) * CFrame.Angles(0, math.rad(-33.75), 0))
			local CaptionsWOO = Instance.new("TextLabel", workplace)
			CaptionsWOO.Position = UDim2.new(0, 0, 1, 0)
			CaptionsWOO.Size = UDim2.new(1, 0, 0, 30)
			CaptionsWOO.BackgroundTransparency = 1
			CaptionsWOO.TextSize = 30
			CaptionsWOO.TextYAlignment = Enum.TextYAlignment.Bottom
			CaptionsWOO.Font = Enum.Font.Arcade
			CaptionsWOO.AnchorPoint = Vector2.new(0, 1)
			CaptionsWOO.Text = ""
			CaptionsWOO.TextColor3 = Color3.new(1, 1, 1)
			CaptionsWOO.TextStrokeColor3 = Color3.new(0, 0, 0)
			CaptionsWOO.TextStrokeTransparency = 0
			IntroSound.Playing = true
			local isDone = false
			IntroSound.Ended:Connect(function()
				isDone = true
			end)
			local RightNow = 0
			while not isDone and game["Run Service"].RenderStepped:Wait() do
				RightNow = math.max(RightNow, IntroSound.TimePosition)
				if RightNow < 2/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7, 1, -2.5) * CFrame.Angles(0, math.rad(-33.75), 0))
				elseif RightNow < 3/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.50000048, 0.5, -2, 0.815493107, -0.195090339, -0.544895113, 0.0507084206, 0.961939812, -0.268515468, 0.576541126, 0.191341743, 0.794348121))
				elseif RightNow < 4/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-8.00000095, -0.500000238, -1.5, 0.859859526, -0.445638537, -0.249094144, 0.0551018119, 0.566070974, -0.822512925, 0.507548511, 0.69351995, 0.511297107))
				elseif RightNow < 5/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.00000048, 1.99999976, -2.5, 0.815493107, 0.195090339, -0.544895113, -0.0507084206, 0.961939812, 0.268515468, 0.576541126, -0.191341743, 0.794348121))
				elseif RightNow < 6/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.00000048, 2.5, -1.5, 0.815493107, 0.195090339, -0.544895113, -0.36247161, 0.906127393, -0.218053788, 0.45120433, 0.375330359, 0.809655488))
				elseif RightNow < 7/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7, 2.50000024, -1.50000024, 0.52363342, -0.81498003, -0.248225242, 0.73802799, 0.579485178, -0.345704675, 0.4255853, -0.00217476557, 0.904915869))
				elseif RightNow < 8/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-6.99999905, 2.50000048, -1.50000095, -0.921660662, 0.00896036997, -0.387893438, 0.141794667, -0.922803104, -0.358230323, -0.361158997, -0.385168284, 0.849240899))
				elseif RightNow < 9/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-10, 0.50000155, -1.50000095, 0.45120427, -0.815493107, -0.36247161, 0.809655368, 0.544895172, -0.218053699, 0.375330359, -0.195090309, 0.906127572))
				elseif RightNow < 10/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.00321674, 2, -0.00171875954, 0.975102246, 0.166520044, -0.146446645, -0.208810285, 0.911810458, -0.353553444, 0.0746578425, 0.375330299, 0.923879683))
				elseif RightNow < 11/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.00321674, 2.13636684, 0.122372001, 0.960534513, 0.22187826, -0.16775918, -0.271771163, 0.877102613, -0.396020561, 0.0592737049, 0.425982952, 0.902789056))
				elseif RightNow < 12/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-6.89796972, 2.243999, 0.217838511, 0.948060811, 0.259107828, -0.184507355, -0.314632118, 0.84914422, -0.4242194, 0.0467549674, 0.46023652, 0.886567473))
				elseif RightNow < 13/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.1326828, 2.08393788, 0.0604149997, 0.968657315, 0.199963316, -0.147367388, -0.234934926, 0.930179477, -0.282084674, 0.080671519, 0.307864696, 0.948005736))
				elseif RightNow < 14/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.5, 1.00000072, -1.88424778, 0.963103533, -5.03680496e-07, 0.269131362, -0.108562842, 0.915030837, 0.388500661, -0.246263683, -0.403384, 0.881269276))
				elseif RightNow < 15/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.83555174, 1.16108298, -0.978254199, 0.947217941, -0.0477651283, -0.31701231, 1.83335226e-06, 0.988839447, -0.148985699, 0.320590556, 0.141121343, 0.936646461))
				elseif RightNow < 21/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.92568684, 1.16108286, -0.893301427, 0.946581662, -0.0839579925, -0.311342657, 0.0221553538, 0.980162084, -0.196955308, 0.321702242, 0.179536372, 0.929663599))
				elseif RightNow < 22/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.92568684, 0.614889145, -0.893301427, 0.932716846, 0.108875453, -0.343784362, -0.0970474929, 0.993947506, 0.0514820851, 0.347309202, -0.0146547109, 0.937636554))
				elseif RightNow < 23/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.46804047, 0.230739698, -1.6649344, 0.936606705, 0.25430721, -0.241045207, -0.0885383189, 0.837370694, 0.539417982, 0.339023143, -0.48387894, 0.806799889))
				elseif RightNow < 24/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.72459364, 1.7059629, -1.1836133, 0.886299193, -0.0854313299, -0.455170691, 0.0265078209, 0.990584791, -0.134309143, 0.462360889, 0.106972337, 0.8802163))
				elseif RightNow < 25/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.76113033, 1.80392718, -1.14700115, 0.883954465, -0.133618176, -0.448082328, 0.0614867434, 0.983194888, -0.171892926, 0.463522404, 0.124394089, 0.877311349))
				elseif RightNow < 26/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.76112795, 1.27796566, -1.14700103, 0.879137874, -0.208929554, -0.428329527, 0.0440534912, 0.930557668, -0.363486469, 0.4745287, 0.300685167, 0.827291906))
				elseif RightNow < 27/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.34285164, 0.355022788, -1.74586654, 0.889479995, 0.0553367361, -0.453616917, -0.264416784, 0.871920109, -0.412117124, 0.372713357, 0.486512542, 0.790184796))
				elseif RightNow < 28/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.34285164, 1.79528093, -1.74586642, 0.88948071, 0.0553367808, -0.453616917, -0.189699516, -0.858363867, -0.476683438, -0.415747374, 0.510049701, -0.752997756))
				elseif RightNow < 29/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.34285164, 1.79528069, -1.7458663, 0.889481664, 0.0553368405, -0.453616917, 0.456602097, -0.0671706721, 0.887133539, 0.018620979, -0.996206701, -0.0850133747))
				elseif RightNow < 30/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.34285164, 1.79528093, -1.7458663, 0.889477491, 0.0553363748, -0.453616679, 0.121131949, 0.928583264, 0.350799441, 0.440632969, -0.366975605, 0.819250762))
				elseif RightNow < 31/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.34285116, 1.42017603, -1.7458663, 0.887836814, -0.0300348662, -0.459179342, -0.0341885723, 0.990804255, -0.130913153, 0.458889455, 0.131927982, 0.878644586))
				elseif RightNow < 32/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-6.36748028, 0.154607534, -2.88250399, 0.785897315, 0.401053101, -0.470666319, -0.00463912683, 0.764954388, 0.644068003, 0.618346095, -0.503985703, 0.603034019))
				elseif RightNow < 33/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.87750626, 1.314008, -1.37471867, 0.69913733, -0.251648426, -0.669238508, 0.0023207406, 0.93680805, -0.349836081, 0.714983702, 0.243030295, 0.655541539))
				elseif RightNow < 34/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.87750626, 2.19459844, -1.37471879, 0.696120739, -0.16041027, -0.699774563, 0.0280578248, 0.98005265, -0.196747467, 0.717376232, 0.117325835, 0.686735749))
				elseif RightNow < 35/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-8.05236435, 2.6228776, -1.20848608, 0.694999158, 0.00912487321, -0.718952656, -0.0110103991, 0.999937296, 0.00204753852, 0.718926251, 0.00649291836, 0.695056021))
				elseif RightNow < 36/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-8.05236435, 2.80292511, -1.20848608, 0.695001781, 0.00912502129, -0.718952715, -0.0110102948, 0.999937534, 0.00204747706, 0.718929291, 0.00649298541, 0.695056379))
				elseif RightNow < 37/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.78400373, 2.13917589, -1.07536113, 0.687844217, -0.150635019, -0.71005851, 0.29776144, 0.950690389, 0.0867596865, 0.661979258, -0.271103978, 0.698777676))
				elseif RightNow < 38/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-7.21530485, 1.3933847, -0.619838715, 0.496787041, -0.41912052, -0.759962201, 0.665345848, 0.746170759, 0.0234186985, 0.557248414, -0.517269671, 0.64954561))
				elseif RightNow < 39/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-5.49746418, 0.444215, 1.31651247, 0.191123679, -0.681350291, -0.706565022, 0.969330788, 0.244333819, 0.0265852343, 0.15452449, -0.689973533, 0.707148969))
				elseif RightNow < 40/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-3.38715577, 0.444215, 3.25695801, 0.191122636, -0.681350231, -0.70656532, 0.969330907, 0.244333208, 0.0265844632, 0.154524654, -0.689973831, 0.707148612))
					workplace["STEVE"].Head.Handle.CFrame = CFrame.new(-5.65100002, 1.51400006, 0.666999996, 0.31617105, -0.622155488, -0.716211081, 0.881954968, 0.470920056, -0.0197383948, 0.349558532, -0.625425279, 0.697604477)
				elseif RightNow < 41/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(-0.289387882, 0.444215119, 6.78343391, 0.016794771, -0.696013868, -0.717831969, 0.996621311, 0.0693817735, -0.04395549, 0.0803980753, -0.714668334, 0.694827557))
					workplace["STEVE"].Head.Handle.CFrame = CFrame.new(-8.95445919, 2.63839269, 1.94351673, 0.707520068, -0.350649714, -0.613563538, 0.423285127, 0.905519605, -0.0293978602, 0.565902114, -0.238912791, 0.789098084)
				elseif RightNow < 42/15 then
					workplace["STEVE"].Head.Handle.CFrame = CFrame.new(-9.8661356, 3.78492498, 1.51804352, 0.82297188, -0.0846099183, -0.56174618, 0.108693913, 0.994029939, 0.00951898843, 0.557586849, -0.068892248, 0.827254891)
				elseif RightNow < 43/15 then
					workplace["STEVE"].Head.Handle.CFrame = CFrame.new(-10.1194925, 4.57068157, 1.40593159, 0.817121863, 0.0145428646, -0.576281607, 0.020687962, 0.998298049, 0.0545266196, 0.576093733, -0.0564769693, 0.815430284)
				elseif RightNow < 67/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(0, 1000, 0))
					workplace["STEVE"].Head.Handle.CFrame = CFrame.new(-10.1194925, 4.57068157, 1.40593159, 0.817121863, 0.0145428646, -0.576281607, 0.020687962, 0.998298049, 0.0545266196, 0.576093733, -0.0564769693, 0.815430284) + Vector3.new(0, ((math.floor(RightNow*15)-43) * 0.5)-(2^((math.floor(RightNow*15)-43) * 0.8)), 0)
				elseif RightNow < 68/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(0, 1000, 0))
					workplace["STEVE"].Head.Handle.CFrame = CFrame.new(workplace["STEVE"].Head.Position + Vector3.new(0.0032176971435546875, 0.2451004981994629, 0.0017185211181640625))
				elseif RightNow < 72/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(0, 1000, 0))
				elseif RightNow < 73/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(25.8686237, 1.00000048, -15.9404078, 0.0950869843, -0.741208851, 0.66450572, 0.991871476, 0.127243578, 0, -0.0845540836, 0.659104288, 0.747283161))
				elseif RightNow < 74/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(16.7981834, 1.56363082, -9.47294903, 0.333040148, -0.688143492, 0.644626081, 0.907201707, 0.420214593, -0.0201150328, -0.257039279, 0.591505051, 0.764233291))
				elseif RightNow < 75/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(15.2182035, 3.23286581, -6.1776228, 0.530796766, -0.574429333, 0.623125792, 0.742710531, 0.669432104, -0.0155456616, -0.408210576, 0.47105369, 0.781967103))
				elseif RightNow < 76/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(14.5193672, 5.16000938, -4.99440145, 0.665898919, -0.222590908, 0.712061942, 0.306927502, 0.951675534, 0.0104648173, -0.679981053, 0.211582899, 0.70203888))
				elseif RightNow < 77/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(14.5193672, 5.16001034, -4.99440098, 0.59007442, -0.0042020632, 0.807338417, 0.100812688, 0.992543459, -0.0685168952, -0.801030099, 0.121820033, 0.586097956))
				elseif RightNow < 78/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(14.5193672, 5.16000986, -4.99440145, 0.608337104, 0.107232064, 0.786402345, -0.178832024, 0.983870804, 0.00418035686, -0.773269773, -0.143177032, 0.617701411))
				elseif RightNow < 79/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(14.1103106, 4.5476923, -4.59953547, 0.592017233, 0.185869962, 0.784199834, -0.313115984, 0.949647784, 0.0112965275, -0.742613673, -0.252233148, 0.620406508))
				elseif RightNow < 80/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(9.68610477, 2.45993781, -3.19172359, 0.659851193, -0.305516958, 0.686482549, -0.221890271, 0.793635726, 0.56648761, -0.717888057, -0.526120722, 0.455889881))
				elseif RightNow < 81/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(1.18855703, 2.02272439, -5.66053104, 0.625810981, -0.168092474, 0.761648536, -0.0100108413, 0.974691093, 0.223335505, -0.779911876, -0.14739047, 0.608288765))
				elseif RightNow < 82/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(6.95363045, 3.938972, -2.80658102, 0.549017847, 0.30555889, 0.777956188, -0.0123604331, 0.933645785, -0.357986927, -0.835720479, 0.186925009, 0.516364157))
				elseif RightNow < 83/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(8.34742165, 4.48044872, -1.76717269, 0.549569011, 0.491479129, 0.675592303, -0.0560397133, 0.828522325, -0.557147026, -0.833568037, 0.268330216, 0.482871473))
				elseif RightNow < 84/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(8.88290977, 4.99524021, -1.27257419, 0.546897054, 0.557635069, 0.624459624, -0.0548650548, 0.768158555, -0.637906849, -0.835401595, 0.31460771, 0.450697064))
				elseif RightNow < 90/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(9.04524136, 5.30480576, -1.05213368, 0.547881961, 0.601242065, 0.581667185, -0.0314707384, 0.709632158, -0.703871429, -0.835964978, 0.36733216, 0.40771481))
				elseif RightNow < 91/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(8.88290977, 4.99524021, -1.27257419, 0.546897054, 0.557635069, 0.624459624, -0.0548650548, 0.768158555, -0.637906849, -0.835401595, 0.31460771, 0.450697064))
				elseif RightNow < 92/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(6.95363045, 3.938972, -2.80658102, 0.549017847, 0.30555889, 0.777956188, -0.0123604331, 0.933645785, -0.357986927, -0.835720479, 0.186925009, 0.516364157))
				elseif RightNow < 93/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(1.18855703, 2.02272439, -5.66053104, 0.625810981, -0.168092474, 0.761648536, -0.0100108413, 0.974691093, 0.223335505, -0.779911876, -0.14739047, 0.608288765))
				elseif RightNow < 94/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(5.47097445, 3.08923411, -3.85643005, 0.378378004, 0.451714039, 0.807955086, -0.485579729, 0.839971364, -0.24221088, -0.788065612, -0.300679296, 0.53716743))
				elseif RightNow < 95/15 then
					workplace["STEVE"]:PivotTo(CFrame.new(7.14462423, 3.40630984, -2.3244977, 0.42541045, 0.540498376, 0.725874901, -0.628820717, 0.753364086, -0.192438617, -0.650857449, -0.3745794, 0.660362959 ))
				else
					workplace["STEVE"]:PivotTo(CFrame.new(8.48040581, 4.9121809, -1.89395833, 0.305036336, 0.648488462, 0.697435021, -0.5888412, 0.703999937, -0.397051871, -0.748477817, -0.289563209, 0.596602201))
				end
				if RightNow < 35/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.47117782, 4, -0.2926355, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.47117782, 4, 0.2926355, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.923879504, 0, -0.382683456, 0, 1, 0, 0.382683456, 0, 0.923879504)
				elseif RightNow < 36/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.49999988, 4, -2.98023224e-08, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.49999988, 4, 2.98023224e-08, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 1.00000024, 0, -4.47034836e-08, 0, 1, 0, 7.4505806e-08, 0, 1.00000024)
				elseif RightNow < 37/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.47117782, 4, 0.292635441, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.47117782, 4, -0.292635441, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.923879683, 0, 0.382683456, 0, 1, 0, -0.382683456, 0, 0.923879683)
				elseif RightNow < 38/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.923879385, 0, 0.382683396, 0, 1, 0, -0.382683396, 0, 0.923879385)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.3858192, 4, 0.574025035, 0.923879385, 0, 0.382683396, 0, 1, 0, -0.382683396, 0, 0.923879385)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.3858192, 4, -0.574025035, 0.923879385, 0, 0.382683396, 0, 1, 0, -0.382683396, 0, 0.923879385)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.707106709, 0, 0.707106769, 0, 1, 0, -0.707106709, 0, 0.707106829)
				elseif RightNow < 58/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.47117782, 4, 0.292635441, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.47117782, 4, -0.292635441, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.923879683, 0, 0.382683456, 0, 1, 0, -0.382683456, 0, 0.923879683)
				elseif RightNow < 59/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.49999988, 4, -2.98023224e-08, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.49999988, 4, 2.98023224e-08, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 1.00000024, 0, -4.47034836e-08, 0, 1, 0, 7.4505806e-08, 0, 1.00000024)
				elseif RightNow < 60/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.47117782, 4, 0.292635441, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.47117782, 4, -0.292635441, 0.980785191, 0, 0.195090309, 0, 1, 0, -0.195090309, 0, 0.980785191)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.923879683, 0, 0.382683456, 0, 1, 0, -0.382683456, 0, 0.923879683)
				elseif RightNow < 61/15 then
					workplace["Nooby"]["HumanoidRootPart"].CFrame = CFrame.new(0, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					workplace["Nooby"]["Torso"].CFrame = CFrame.new(0, 4, 0, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
					workplace["Nooby"]["Left Arm"].CFrame = CFrame.new(-1.47117782, 4, -0.2926355, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
					workplace["Nooby"]["Right Arm"].CFrame = CFrame.new(1.47117782, 4, 0.2926355, 0.980785251, 0, -0.195090324, 0, 1, 0, 0.195090324, 0, 0.980785251)
					workplace["Nooby"]["Left Leg"].CFrame = CFrame.new(-0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Right Leg"].CFrame = CFrame.new(0.5, 2.5, 0.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
					workplace["Nooby"]["Head"].CFrame = CFrame.new(0, 5.5, 0, 0.831469595, 0, -0.555570245, 0, 1, 0, 0.555570245, 0, 0.831469595)
				end
				if RightNow < 29/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-4.43805838, 2.23673725, -9.22149658, -0.963791013, 0, 0.266659051, 0, 1, 0, -0.266659051, 0, -0.963791013)
					workplace.CurrentCamera.FieldOfView = 50
				elseif RightNow < 54/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188213, 1.35897601, -6.95864391, -0.740011632, 0.168196127, 0.651224196, 0.00802478939, 0.970366657, -0.241504297, -0.672546208, -0.173490062, -0.719432235)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 55/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188273, 1.35897601, -6.95864439, -0.758488655, 0.0449015163, 0.650137603, -0.0144989276, 0.996213973, -0.0857184529, -0.65152508, -0.0744427815, -0.754965961)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 56/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188273, 1.35897613, -6.95864439, -0.852608085, -0.0273214113, 0.5218364, 0.0104048215, 0.997546732, 0.0692278445, -0.522447526, 0.064453803, -0.850232065)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 57/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969187975, 1.35897624, -6.95864439, -0.941160738, -0.101821549, 0.322256207, 0.0162208341, 0.938826263, 0.34400928, -0.33757028, 0.328995228, -0.88193476)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 58/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188154, 1.35897624, -6.95864487, -0.989828944, -0.0289927144, 0.139278084, 0.0239742734, 0.931017518, 0.364186168, -0.140229061, 0.36382103, -0.9208529)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 59/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188273, 1.35897624, -6.95864582, -0.993326545, -0.0195482317, 0.113668323, 0.0233761817, 0.930955946, 0.364382237, -0.112943307, 0.364607722, -0.924286425)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 62/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188273, 1.35897613, -6.9586463, -0.995152771, -0.0135568958, 0.0974036306, 0.0229945537, 0.930920124, 0.364498615, -0.0956164747, 0.364971519, -0.92609596)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 63/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969188154, 1.35897577, -6.95864725, -0.997926116, 0.0115235141, 0.0633294582, 0.0312727727, 0.946725786, 0.320519358, -0.0562622175, 0.321835071, -0.94512271)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 64/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969187856, 1.35897589, -6.9586482, -0.9841277, -0.0125635415, -0.177016079, -0.0460390449, 0.981413603, 0.186300829, 0.171385303, 0.191493511, -0.96641475)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 65/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969187498, 1.35897636, -6.9586482, -0.897448421, -0.0545767695, -0.437730432, 0.0143980514, 0.988163769, -0.152724907, 0.44088465, -0.143365219, -0.886040449)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 98/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(-0.969187975, 1.3589766, -6.95864773, -0.737520397, -0.239473894, -0.631439745, -0.0293907188, 0.945512116, -0.324257731, 0.674685121, -0.220588207, -0.704372764)
					workplace.CurrentCamera.FieldOfView = 60
				elseif RightNow < 99/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(1.97225833, 5.96022091, -4.36711311, -0.923879504, -0.07465785, 0.375330359, 0, 0.98078537, 0.195090324, -0.382683486, 0.180239961, -0.906127512)
					workplace.CurrentCamera.FieldOfView = 30
				elseif RightNow < 100/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(1.97225833, 5.96022091, -4.36711311, -0.923879504, -0.07465785, 0.375330359, 0, 0.98078537, 0.195090324, -0.382683486, 0.180239961, -0.906127512)
					workplace.CurrentCamera.FieldOfView = 25
				elseif RightNow < 101/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(1.97225833, 5.96022091, -4.36711311, -0.923879504, -0.07465785, 0.375330359, 0, 0.98078537, 0.195090324, -0.382683486, 0.180239961, -0.906127512)
					workplace.CurrentCamera.FieldOfView = 20
				elseif RightNow < 102/15 then
					workplace.CurrentCamera.CFrame = CFrame.new(1.97225833, 5.96022091, -4.36711311, -0.923879504, -0.07465785, 0.375330359, 0, 0.98078537, 0.195090324, -0.382683486, 0.180239961, -0.906127512)
					workplace.CurrentCamera.FieldOfView = 25
				end
				if RightNow < 1/15 then
					CaptionsWOO.Text = ""
				elseif RightNow < 21/15 then
					CaptionsWOO.Text = "[STEVE]: Thats right!"
				elseif RightNow < 35/15 then
					CaptionsWOO.Text = "[STEVE]: We're going back in time..."
				elseif RightNow < 41/15 then
					CaptionsWOO.Text = "[STEVE]: We're going back in time...\n[Nooby]: *proceeds to suspect murder*"
				elseif RightNow < 52/15 then
					CaptionsWOO.Text = "[STEVE]: ...to the first thanksgiving to\n[Nooby]: *proceeds to suspect murder*"
				elseif RightNow < 58/15 then
					CaptionsWOO.Text = "[STEVE]: ...to the first thanksgiving to"
				elseif RightNow < 65/15 then
					CaptionsWOO.Text = "[STEVE]: ...to the first thanksgiving to\n[Nooby]: *proceeds to suspect another murder*"
				elseif RightNow < 74/15 then
					CaptionsWOO.Text = "[STEVE]: ...to the first thanksgiving to"
				elseif RightNow < 81/15 then
					CaptionsWOO.Text = "[STEVE]: GET TURKEYS!"
				elseif RightNow < 86/15 then
					CaptionsWOO.Text = "[STEVE]: GET TURKEYS!\n[Camera]: ow"
				elseif RightNow < 90/15 then
					CaptionsWOO.Text = "[STEVE]: GET TURKEYS!"
				elseif RightNow < 93/15 then
					CaptionsWOO.Text = "[STEVE]: OFF!"
				elseif RightNow < 98/15 then
					CaptionsWOO.Text = "[STEVE]: OFF!\n[Camera]: ow"
				elseif RightNow < 105/15 then
					CaptionsWOO.Text = "[STEVE]: THE MENU!!!!!"
				else
					CaptionsWOO.Text = "[STEVE]: THE MENU!!!!!\n[Nooby]: *litskin stare*\n[System]: oh no the game crashed"
				end
			end
			CaptionsWOO.Text = "[EXPLOSION]: collide.wav onomatopoeia"
			playSoundLocal("rbxasset://sounds/collide.wav", 10, 1)
			workplace.IntroName.Position = UDim2.new(0.25, 0, 0.25, 0)
			workplace.IntroName.Size = UDim2.new(0.5, 0, 0.5, 0)
			workplace.IntroName.Text = TheFullScriptName
			workplace.FloorBox.Position = Vector3.new(100, 100, 100)
			workplace.FloorBox.Size = Vector3.new(100, 100, 1)
			workplace.FloorBox.Color = Color3.new(1, 1, 1)
			workplace.CurrentCamera.CFrame = CFrame.new(Vector3.new(100, 100, 95), Vector3.new(100, 100, 100))
			wait(1.2)
			playSoundLocal("rbxasset://sounds/button.wav", 5, 1.25)
			wait(0.8)
			playSoundLocal("rbxasset://sounds/button.wav", 5, 1)
			IntroSound:Destroy()
		end)
	}
}

local IntroFrameMain = Instance.new("Frame", guiItself)
IntroFrameMain.Size = UDim2.new(1, 0, 1, 0)
IntroFrameMain.BackgroundTransparency = 1

local ViewportFrame = Instance.new("ViewportFrame", IntroFrameMain)
ViewportFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ViewportFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.Ambient = game.Lighting.Ambient
ViewportFrame.LightColor = Color3.new(1, 1, 1)
ViewportFrame.LightDirection = Vector3.new(0, -5, 10)
ViewportFrame.CurrentCamera = Instance.new("Camera", ViewportFrame)
ViewportFrame.CurrentCamera.CFrame = CFrame.new(Vector3.new(0, 0, -20), Vector3.new(0, 0, 0))
ViewportFrame.CurrentCamera.FieldOfView = 60
local ChosenIntro = math.random(1, #AllIntrosMade)
while AllIntrosMade[ChosenIntro].RequiresGetSyn and getsynasset == nil do
	ChosenIntro = math.random(1, #AllIntrosMade)
end
--ChosenIntro = 4
local BoxTweening = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
local IntroPart = Instance.new("Part", ViewportFrame)
IntroPart.Name = "FloorBox"
IntroPart.Size = Vector3.new(0.005, 0.1, 5)
IntroPart.Color = AllIntrosMade[ChosenIntro].BoxColor
playSoundLocal("rbxasset://sounds/bass.wav", 5, 1)
local IntroPartTweening = game.TweenService:Create(IntroPart, BoxTweening, {Size = Vector3.new(12, 0.1, 5)})
IntroPartTweening:Play()
wait(1)
playSoundLocal("rbxasset://sounds/bass.wav", 5, 1.189)
IntroPartTweening = IntroPartTweening:Destroy()
IntroPartTweening = game.TweenService:Create(IntroPart, BoxTweening, {Size = Vector3.new(12, 3, 5)})
IntroPartTweening:Play()
wait(1)
playSoundLocal("rbxasset://sounds/bass.wav", 5, 1.414)
IntroPartTweening = IntroPartTweening:Destroy()
IntroPartTweening = game.TweenService:Create(IntroPart, BoxTweening, {Position = Vector3.new(0, -3.5, 0)})
IntroPartTweening:Play()
local STEVECharacterCreator = (function()
	local Character = Instance.new("Model")
	Character.Name = "STEVE"
	local HRP = Instance.new("Part", Character)
	Character.PrimaryPart = HRP
	HRP.Name = "HumanoidRootPart"
	HRP.Size = Vector3.new(2, 2, 1)
	HRP.Transparency = 1
	HRP.Anchored = true
	local Torso = Instance.new("Part", Character)
	local LeftArm = Instance.new("Part", Character)
	local RightArm = Instance.new("Part", Character)
	local LeftLeg = Instance.new("Part", Character)
	local RightLeg = Instance.new("Part", Character)
	local Head = Instance.new("Part", Character)
	Torso.Name = "Torso"
	Torso.Size = Vector3.new(2, 2, 1)
	Torso.Anchored = true
	LeftArm.Name = "Left Arm"
	LeftArm.Size = Vector3.new(1, 2, 1)
	LeftArm.Anchored = true
	LeftArm.Position = Vector3.new(-1.5, 0, 0)
	LeftArm.Color = Color3.fromRGB(17, 17, 17)
	RightArm.Name = "Right Arm"
	RightArm.Size = Vector3.new(1, 2, 1)
	RightArm.Anchored = true
	RightArm.Position = Vector3.new(1.5, 0, 0)
	RightArm.Color = Color3.fromRGB(17, 17, 17)
	LeftLeg.Name = "Left Leg"
	LeftLeg.Size = Vector3.new(1, 2, 1)
	LeftLeg.Anchored = true
	LeftLeg.Position = Vector3.new(-0.5, -2, 0)
	LeftLeg.Color = Color3.fromRGB(17, 17, 17)
	RightLeg.Name = "Right Leg"
	RightLeg.Size = Vector3.new(1, 2, 1)
	RightLeg.Anchored = true
	RightLeg.Position = Vector3.new(0.5, -2, 0)
	RightLeg.Color = Color3.fromRGB(17, 17, 17)
	Head.Name = "Head"
	Head.Size = Vector3.new(2, 1, 1)
	Head.Anchored = true
	Head.Position = Vector3.new(0, 1.5, 0)
	Head.Color = Color3.fromRGB(17, 17, 17)
	local Shirt = Instance.new("Shirt", Character)
	Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=4937542315"
	local TShirt = Instance.new("ShirtGraphic", Character)
	TShirt.Graphic = "http://www.roblox.com/asset/?id=10901854752"
	local Pants = Instance.new("Pants", Character)
	Pants.PantsTemplate = "http://www.roblox.com/asset/?id=398633811"
	local roblox --[[ ROBLOX ADDED THIS NOT ME ]] = Instance.new("Decal", Torso)
	roblox.Name = "roblox"
	roblox.Texture = "http://www.roblox.com/asset/?id=10901854752"
	local face = Instance.new("Decal", Head)
	face.Name = "face"
	face.Texture = "http://www.roblox.com/asset/?id=83017053"
	local HeadMesh = Instance.new("SpecialMesh", Head)
	HeadMesh.Name = "Mesh"
	HeadMesh.MeshType = Enum.MeshType.Head
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	local Accessory = Instance.new("Part", Head)
	Accessory.Name = "Handle"
	Accessory.Position = Vector3.new(0.003217935562133789, 1.745100498199463, 0.0017185211181640625)
	Accessory.Size = Vector3.new(2, 2, 2)
	Accessory.Anchored = true
	local AccessoryMesh = Instance.new("SpecialMesh", Accessory)
	AccessoryMesh.Name = "Mesh"
	AccessoryMesh.MeshType = Enum.MeshType.FileMesh
	AccessoryMesh.MeshId = "rbxassetid://4546389367"
	AccessoryMesh.TextureId = "http://www.roblox.com/asset/?id=4458268585"
	local Humanoid = Instance.new("Humanoid", Character)
	Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
	Humanoid.Health = 0
	return Character
end)
local NoobyCharacterCreator = (function()
	local Character = Instance.new("Model")
	Character.Name = "Nooby"
	local HRP = Instance.new("Part", Character)
	Character.PrimaryPart = HRP
	HRP.Name = "HumanoidRootPart"
	HRP.Size = Vector3.new(2, 2, 1)
	HRP.Transparency = 1
	HRP.Anchored = true
	local Torso = Instance.new("Part", Character)
	local LeftArm = Instance.new("Part", Character)
	local RightArm = Instance.new("Part", Character)
	local LeftLeg = Instance.new("Part", Character)
	local RightLeg = Instance.new("Part", Character)
	local Head = Instance.new("Part", Character)
	Torso.Name = "Torso"
	Torso.Size = Vector3.new(2, 2, 1)
	Torso.Anchored = true
	LeftArm.Name = "Left Arm"
	LeftArm.Size = Vector3.new(1, 2, 1)
	LeftArm.Anchored = true
	LeftArm.Position = Vector3.new(-1.5, 0, 0)
	LeftArm.Color = Color3.fromRGB(245, 205, 48)
	RightArm.Name = "Right Arm"
	RightArm.Size = Vector3.new(1, 2, 1)
	RightArm.Anchored = true
	RightArm.Position = Vector3.new(1.5, 0, 0)
	RightArm.Color = Color3.fromRGB(245, 205, 48)
	LeftLeg.Name = "Left Leg"
	LeftLeg.Size = Vector3.new(1, 2, 1)
	LeftLeg.Anchored = true
	LeftLeg.Position = Vector3.new(-0.5, -2, 0)
	LeftLeg.Color = Color3.fromRGB(245, 205, 48)
	RightLeg.Name = "Right Leg"
	RightLeg.Size = Vector3.new(1, 2, 1)
	RightLeg.Anchored = true
	RightLeg.Position = Vector3.new(0.5, -2, 0)
	RightLeg.Color = Color3.fromRGB(245, 205, 48)
	Head.Name = "Head"
	Head.Size = Vector3.new(2, 1, 1)
	Head.Anchored = true
	Head.Position = Vector3.new(0, 1.5, 0)
	Head.Color = Color3.fromRGB(245, 205, 48)
	local Shirt = Instance.new("Shirt", Character)
	Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=3670737337"
	local TShirt = Instance.new("ShirtGraphic", Character)
	TShirt.Graphic = "http://www.roblox.com/asset/?id=9756855735"
	local Pants = Instance.new("Pants", Character)
	Pants.PantsTemplate = "http://www.roblox.com/asset/?id=23571256"
	local roblox --[[ ROBLOX ADDED THIS NOT ME ]] = Instance.new("Decal", Torso)
	roblox.Name = "roblox"
	roblox.Texture = "http://www.roblox.com/asset/?id=9756855735"
	local face = Instance.new("Decal", Head)
	face.Name = "face"
	face.Texture = "http://www.roblox.com/asset/?id=144080495"
	local HeadMesh = Instance.new("SpecialMesh", Head)
	HeadMesh.Name = "Mesh"
	HeadMesh.MeshType = Enum.MeshType.Head
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	local Humanoid = Instance.new("Humanoid", Character)
	Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
	Humanoid.Health = 0
	return Character
end)
local STEVECharacter = STEVECharacterCreator()
local NoobyCharacter = NoobyCharacterCreator()
STEVECharacter.Parent = ViewportFrame
NoobyCharacter.Parent = ViewportFrame
STEVECharacter:PivotTo(CFrame.new(0, 1000, 0))
NoobyCharacter:PivotTo(CFrame.new(0, 1000, 0))
local IntroName = Instance.new("TextLabel", ViewportFrame)
IntroName.Name = "IntroName"
IntroName.BackgroundTransparency = 1
IntroName.Text = ""
IntroName.TextScaled = true
IntroName.Font = Enum.Font.Arcade
AllIntrosMade[ChosenIntro].AnimationFunction(ViewportFrame)
for i=1, 5 do
	ViewportFrame.ImageTransparency = i/5
	IntroName.TextTransparency = i/5
	wait(0.2)
end
STEVECharacter:Destroy()
NoobyCharacter:Destroy()
IntroFrameMain:Destroy()
guiItself:Destroy()

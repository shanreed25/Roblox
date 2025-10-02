local tool = script.Parent

local handle = tool.Handle
local yourSound = tool.YourSound --replace with your sound name


local isActivated = false

local WAIT_TIME = 0.5

local player = game.Players:FindFirstChild("your_character_name_here") --replace with your character name


tool.Equipped:Connect(function()

	print("The player has equipped the tool")
	yourSound:Play()
end)

tool.Unequipped:Connect(function()
	print("The player has unequipped the tool")
	
	
end)

tool.Activated:Connect(function()
	print("The player has activated the tool")
	isActivated = true
	tool:ScaleTo(2)
	while isActivated do
		handle.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
		task.wait(WAIT_TIME)
	end
	
	--Hardcode: will not work in a real Roblox game
	player.leaderstats.Clicks.Value += 1
end)

tool.Deactivated:Connect(function()
	print("The player has deactivated the tool")
	isActivated = false
	tool:ScaleTo(1)
end)
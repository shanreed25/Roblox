--GOAL: Create Player Stats
	--create a leader stats folder for every player that joins the game

local function addPlayerStats(player)
	local leaderstats = Instance.new('Folder')
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local clicks = Instance.new("IntValue")
	clicks.Name = "Clicks"
	clicks.Value = 0
	clicks.Parent = leaderstats

	end


game.Players.PlayerAdded:Connect(addPlayerStats)
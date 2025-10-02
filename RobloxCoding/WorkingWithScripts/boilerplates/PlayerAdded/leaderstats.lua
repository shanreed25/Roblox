--GOAL: Create Player Stats
	--create a leader stats folder for every player that joins the game

local function addPlayerStats(player)

	--TODO 1: Add a folder called leaderstats
	local leaderstats = Instance.new('Folder')

	--name must be the same as the variable
	leaderstats.Name = "leaderstats"

	--TODO 2: Put the folder inside the player object folder
	leaderstats.Parent = player
-----------------------------------------------------------------------
	--TODO 3: Create stats for the player, do this for each stats
	local statsName = Instance.new("DataTypeInstance")
	--DataTypeInstance should be a Instance of the IntValue, StringValue etc... class

	--set the properties of the Instance
	statsName.Name = Name
	statsName.Value = Value
	--you can set the value of the team Instance using .Value
--------------------------------------------------------------------------

	--TODO 4: Put the statsName inside the leaderstats folder
	statsName.Parent = leaderstats

	end


game.Players.PlayerAdded:Connect(addPlayerStats)
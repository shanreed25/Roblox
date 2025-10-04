--GOAL: Create Player Stats
	--create a leader stats folder for every player that joins the game



game.Players.PlayerAdded:Connect(function(player)
	
	--TODO 1: Add a folder called leaderstats
	local leaderstats = Instance.new('Folder')
	
	--name must be the same as the variable
	leaderstats.Name = "leaderstats"
	
	--TODO 2: Put the folder inside the player object folder
	leaderstats.Parent = player
	
	--TODO 3: Create a stat called coins
	local coins = Instance.new("IntValue")
	--coins is an Instance of the IntValue class
	--coins = 0--this will not work, this is not how you set the value of a Instance
		--Error: Workspace.PlayerStats:25: attempt to index number with 'Parent'
		--this is because the coins is an Instance of the IntValue class not a number
	
	local team = Instance.new("StringValue")
	--team is an Instance of the StringValue class
	--team = "Crystal Fighters"--this will not work, this is not how you set the value of a Instance
		--Error: Workspace.PlayerStats:36: attempt to index string with 'Parent' 
	--this is because the team is an Instance of the StringValue class not a string
	
	--set the properties of the team Instance
	team.Name = "Team"
	--you can set the value of the team Instance using .Value
	team.Value = "Crystal Fighters"
	--you can set the value of the team Instance using .Value
	
	--set the properties of the coins Instance
	coins.Name = "Coins"
	--you can set the value of the coins Instance using .Value
	coins.Value = 0--this value will change as the player earns coins
	
	--TODO 4: Put the coins inside the leaderstats folder
	coins.Parent = leaderstats
	team.Parent = leaderstats
	
	while true do
		task.wait(5)
		
	
		--coins = coins + 1--again, this will not work
			--this is trying to add 1 to the coins Instance not the value of the coins Instance
			-- Error: Workspace.PlayerStats:28: attempt to perform arithmetic (add) on Instance and number
			--this is because the coins is an Instance of the IntValue class not a number
		
		
		coins.Value = coins.Value + 1
	end
end)
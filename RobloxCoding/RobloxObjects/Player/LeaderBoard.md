# Roblox Leader Board
**To create a Roblox leaderboard, you must name the folder containing the player's statistics exactly `leaderstats` with all lowercase letters.** 
- this folder holds the Value objects (like IntValue, NumberValue, etc.) that represent the player's stats, such as coins or points
- if the folder is named anything else, even with different capitalization, Roblox's built-in system will not recognize it as the leaderstats folder, and your leaderboard will not display correctly
- this is because Roblox has a default system for leaderboards that automatically detects a folder named leaderstats parented to a player


```lua
--TODO 1: Add a PlayerAdded event
    --whenever a player joins the game, this will get their Player object
game.Players.PlayerAdded:Connect(function(player)
    --TODO 2: Create the folder
        --creates this folder for every player that joins the game
    local leaderstats = Instance.new("Folder")


    --TODO 3: Name the folder
        --must be exactly `leaderstats` with all lowercase letters
    leaderstats.Name = "leaderstats"

    --TODO 4: Put the folder inside the player object folder
    leaderstats.Parent = player
    --When you hit play the folder should now be in the player object folder inside the Players folder
------------------------------------------------------------------------------------------------------------------------
--After this, you can add IntValue or NumberValue objects as children of this leaderstats folder to display their stats on the leaderboard
	--TODO 5: Make the folder visiable in the game
		--add a data type instance
	local points = Instance.new("IntValue")
	points.Name = "Points"--Name of the data type instance
		--The name of the data type instance will be displayed on the leaderboard
		--will be the same for all players
	points.Value = 0--Value of the data type instance
		--starting value for all players
		--will change and be different for all players as they play the game

	points.Parent = leaderstats

end)
```
------PlayerAdded Event
--Players.PlayerAdded, is an built in event that is a child of the Players object
	--triggers when a player joins the game
	--allows you to connect to a function to run when triggered
	--Connect, is a function that is a child of the Players.PlayerAdded event
	--PlayerAdded:Connect(function(playerParameter))
		-- this function is a callback function, a function that is called when an event is triggered
		--the playerParameter is a variable that is created when the event is triggered
		--playerParameter is a variable that holds the player that joined
		--the playerParameter is passed to the callback function when the event is triggered


--Syntax: game.Players.PlayerAdded:Connect(function(playerParameter))
	- game.Players: Players, is an object that is a child of the game object
	- playerParameter is a variable that holds the player that joined
	- playerParameter can be named anything, it is just a variable name
	- playerParameter is only accessible inside the callback function

--can trigger the event in two ways


--Option 1:
--game.Players.PlayerAdded:Connect(function(player)
	--take a player and do something with them
--	print("A new player has joined")
--	print(player)
--end)


----Option 2:
local function myPlayerAdded(player)
		print("A new player has joined")
		print(player)
end

--myPlayerAdded is a reference to the myPlayerAdded() function
game.Players.PlayerAdded:Connect(myPlayerAdded)


--GOAL: Make the game functional by loading all the game components and making them functional
	--when a player steps on a button the button will be pressed and the gate will open
	--the player has 10 seconds to get through the gate before the gates close


--TODO 1: LOAD ALL THE GAME COMPONENTS
	--Use WaitForChild() to Wait for game components to load
	--WaitForChild is a function that waits for a child to be
	--added to the given parent
----------------------------------------------------------
--LOAD GAME--wait for "MainGame"(child) to be added to the Workspace(parent)
local mainGame = game.Workspace:WaitForChild("MainGame")

--LOAD GATES--wait for "Gates"(child) to be added to the mainGame(parent)
--Gets MainGame --> Gates
local gate = mainGame:WaitForChild("Gates")
--print(gate)

--LOAD BUTTONS--wait for "Buttons"(child) to be added to the mainGame(parent)
--Gets MainGame --> Buttons
local button = mainGame:WaitForChild("Buttons")
--print(button)
button1 = button:FindFirstChild("Stage1Button1")
print(button1)
------------------------------------------------------------------------------
--TODO 2:Connect a touched event to the button
		--Step 1: Check to see if it is a player that touched the button
		--Step 2: Load the Instance variable Touched of the button


button1.Touched:Connect(function(touchedPart)
	--Step 1: Check to see if it is a player that touched the button
		--returns true if the touchedPart is a child("Humanoid") of the player character
	local touchedbyPlayer = touchedPart.Parent:FindFirstChild("Humanoid")

	--if touchedbyPlayer is true(if the player has touched the part)
	if touchedbyPlayer then


	local touched = button:FindFirstChild("Touched")
end)
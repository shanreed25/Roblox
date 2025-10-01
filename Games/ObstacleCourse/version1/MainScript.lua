--GOAL:
	--when a player steps on the button the button will be pressed
	--a 10 second timer will start and after 10 seconds the button will unpress
	--the player can press the button again after the timer is done
----------------------------------------------------------


--TODO 1: LOAD ALL THE GAME COMPONENTS
	--Use WaitForChild() to Wait for game components to be added to the given parent
----------------------------------------------------------
--LOAD GAME--wait for "MainGame"(child) to be added to the Workspace(parent)
local mainGame = game.Workspace:WaitForChild("MainGame")


--LOAD BUTTONS--wait for "Buttons"(child) to be added to the mainGame(parent)
--Gets MainGame --> Buttons
local buttonsFolder = mainGame:WaitForChild("Buttons")
--print(button)
button1 = buttonsFolder:FindFirstChild("Stage1Button1")
print(button1)
------------------------------------------------------------------------------
--TODO 2:Connect a touched event to the button
		--When a player steps on the button, the button start a timer for 10 seconds
button1.Touched:Connect(function(touchedPart)
	--Step 1: Check to see if it is a player that touched the button
	local touchedbyPlayer = touchedPart.Parent:FindFirstChild("Humanoid")
		--returns true if the touchedPart is a child("Humanoid") of the player character
	if touchedbyPlayer then
		--Step 2: Add a BooleanValue Instance variable to the button, name it Touched
				--uncheck: make sure the value of touched is false
				
		local touched = button1:FindFirstChild("Touched")
			--Load the Instance Variable Touched
		
		touched.Value = true
			--set touched.Value(Instance Variable Touched) to true
		
		button1.CanTouch = false
			--make the button untouchable
		
		--Step 3: Start a timer for 10 seconds
			--Add a IntValue Instance Variable to the button, name it Duration
			--set the value of the Duration Instance variable to 10
		
		local duration = button1:FindFirstChild("Duration")
			--Load the Instance Variable Duration
		
		local timer = duration.Value
			--get the value of the duration variable and set it to timer
			
		while timer > 0 do--create a while loop that will run for 10 seconds
			print(timer)
			task.wait(1)
			timer = timer - 1
		end
		
		
		--when the while loop is done running, that means time is up
		touched.Value = false
			--set the value of touched to false, makes the button touchable again
		button1.CanTouch = true
			--make the button touchable
		print("Time is up")
	end
	
end)



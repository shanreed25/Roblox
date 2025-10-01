----GOAL: Make the game functional by loading all the game components and making them functional
--	--when a player steps on a button the button will be pressed and the gate will open
--	--the player has 10 seconds to get through the gate before the gates close


----TODO 1: LOAD ALL THE GAME COMPONENTS
--	--Use WaitForChild() to Wait for game components to load
--		--WaitForChild is a function that waits for a child to be
--		--added to the given parent
------------------------------------------------------------
----LOAD GAME--wait for "MainGame"(child) to be added to the Workspace(parent)
--local mainGame = game.Workspace:WaitForChild("MainGame")

----LOAD GATES--wait for "Gates"(child) to be added to the mainGame(parent)
--local gates = mainGame:WaitForChild("Gates")

----LOAD BUTTONS--wait for "Buttons"(child) to be added to the mainGame(parent)
--local buttons = mainGame:WaitForChild("Buttons")

--------------------------------------------------------------------------------
------------------------
----Access all buttons and make the player able to press them
----Creates a table of all buttons
--local buttonTable = {}


--local function activateButton(button, touched)
--	touched.Value = true
--	--GATE

--	local gate = gates:FindFirstChild("Stage1Gate1")
	
--	if gate then
--		--open gates
--		gate.Transparency = 0.5
--		gate.CanCollide = false
		
--	end
	
	
--	local duration = button:FindFirstChild("Duration")
	
--	local timer = duration.Value
	
--	while timer > 0 do
--		print(timer)
--		task.wait(1)
--		timer = timer - 1
--	end
	
--	--task.wait(duration.Value)
	
--	gate.Transparency = 0
--	gate.CanCollide = true
	
--	touched.Value = false
--end




----GET ALL BUTTONS--
----GetChildern() will get a table of all children of the given parent
----in this case the parent is the buttons folder
--for _, button in pairs(buttons:GetChildren()) do
--	--connect a touch event to each button
--	button.Touched:Connect(function(otherPart)
		
--		--returns true if the otherPart is a child("Humanoid") of the player character
--		--this is used to make sure that the player is the one touching the button
--		local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
		
--		--Touched is a Instance of the BooleanValue class
--			--the instance variable we created in the button 
--		local touched = button:FindFirstChild("Touched")
		
--			--if humanoid is true(if the player has touched the part)
--			--and touched and touched.Value == false then
--				--and touched exsits as a value??????
--				--and the touched.Value is false(button has not been touched)
--		if humanoid and touched and touched.Value == false then
--			--Make the button pressable
--			--set touched to true
--			activateButton(button, touched)
			
--		end
--	end)
--end
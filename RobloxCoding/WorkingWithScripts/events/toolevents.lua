-- This script is inside a Tool in StarterPack
-- This script demonstrates how to use Tool events, including manual activation of the tool.

--Tool Events

--since the script is inside the tool, it will be replicated to the client
--when the tool is equipped
-------------------------------------------------------------------------------------

--since the script is inside the tool, we can use script.Parent to get the tool
local tool = script.Parent

--TODO: Make a sound play when a Roblox tool is equipped
	--you can do this with a script or manually
----------------------------------------------------------------------------------
	--Manually:
	--1. Insert a Sound object into the Tool
	--2. Set the SoundId to a sound you want to play
	--3. Set the PlayOnRemove property to true
	--4. In the Equipped event, call :Destroy() on the Sound object


	--TODO: Make a sound play when a Roblox tool is equipped
	--add a Sound object inside the tool
	--get the sound object
	--use the Sound object's :Play() method to play the sound
	--use the Sound object's :Stop() method to stop the sound
----------------------------------------------------------------------------------
local sound = tool:WaitForChild("Sound")

--will run every time the tool is equipped
tool.Equipped:Connect(function()
	print("The player has equipped the tool")
	sound:Play()
end)

--will run every time the tool is unequipped
tool.Unequipped:Connect(function()
	print("The player has unequipped the tool")
	sound:Stop()
end)

--will run every time the tool is activated
--clicked with the left mouse or touched with the cursor etc...
tool.Activated:Connect(function()
	print("The player has activated the tool")
end)

--will run every time the tool is deactivated
--mouse released or stopped touching cursor
tool.Deactivated:Connect(function()
	print("The player has deactivated the tool")
end)



-- -------------------------------------------------------------------------------------
-- -- Tool Events: Manually Activated Tool
-- --since the script is inside the tool, we can use script.Parent to get the tool
-- local tool = script.Parent

-- --will run every time the tool is equipped
-- tool.Equipped:Connect(function()
-- 	print("The player has equipped the second tool")

-- 	--Manually Actvate the tool
-- 	tool:Activate()--this will run the code in the Activated event
-- end)

-- --will run every time the tool is unequipped
-- tool.Unequipped:Connect(function()
-- 	print("The player has unequipped the second tool")
-- end)

-- --will run every time the tool is activated
-- --this activation happen mmanually
-- tool.Activated:Connect(function()
-- 	print("The second tool has been activated manually")
-- end)

-- --will run every time the tool is deactivated
-- --because we manually activated the tool,the player can click the mouse button to deactivate it
-- tool.Deactivated:Connect(function()
-- 	print("The player has deactivated the second tool Manually")
-- end)


------------------------------------------------------------------




--TODO:Create a Boolean to check if the tool is activated
	--when the tool is activated, change the color of the tool to green
	--after 3 seconds change the color of the tool to its original color

-- local toolActivated = false
-- local originalBrickColor = tool.Handle.BrickColor -- Store the original color
-- local function mytoolActivated()
-- 	toolActivated = true
-- 	if toolActivated == true then
-- 		tool.Handle.BrickColor = BrickColor.new('Lime green')
-- 		--use tool scale to make the tool bigger
-- 		tool:ScaleTo(2)
-- 		--wait 5 seconds
-- 		task.wait(3)
-- 		--tool can be used again
-- 		toolActivated = false
-- 		tool.Handle.BrickColor = originalBrickColor
-- 		tool:ScaleTo(1)

-- 	end
-- end
-- tool.Activated:Connect(mytoolActivated)



-- tool.Deactivated:Connect(function()
-- 	print("The player has deactivated the tool")
-- end)











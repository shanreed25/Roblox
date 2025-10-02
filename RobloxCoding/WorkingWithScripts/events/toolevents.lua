-- This script is inside a Tool in StarterPack
-- This script demonstrates how to use Tool events, including manual activation of the tool.

--Tool Events

--since the script is inside the tool, it will be replicated to the client
--when the tool is equipped
-------------------------------------------------------------------------------------

--since the script is inside the tool, we can use script.Parent to get the tool
local tool = script.Parent

--will run every time the tool is equipped
tool.Equipped:Connect(function()
	print("The player has equipped the tool")
end)

--will run every time the tool is unequipped
tool.Unequipped:Connect(function()
	print("The player has unequipped the tool")
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



-------------------------------------------------------------------------------------
-- Tool Events: Manually Activated Tool
--since the script is inside the tool, we can use script.Parent to get the tool
local tool = script.Parent

--will run every time the tool is equipped
tool.Equipped:Connect(function()
	print("The player has equipped the second tool")

	--Manually Actvate the tool
	tool:Activate()--this will run the code in the Activated event
end)

--will run every time the tool is unequipped
tool.Unequipped:Connect(function()
	print("The player has unequipped the second tool")
end)

--will run every time the tool is activated
--this activation happen mmanually
tool.Activated:Connect(function()
	print("The second tool has been activated manually")
end)

--will run every time the tool is deactivated
--because we manually activated the tool,the player can click the mouse button to deactivate it
tool.Deactivated:Connect(function()
	print("The player has deactivated the second tool Manually")
end)
















-- Tool Events: Manually Activated Tool
--Tool Events

--since the script is inside the tool, it will be replicated to the client 
--when the tool is equipped

--since the script is inside the tool, we can use script.Parent to get the tool
local tool = script.Parent

--will run every time the tool is equipped
tool.Equipped:Connect(function()
	print("The player has equipped the second tool")
	
	--Manually Actvate the tool
	tool:Activate()--this will run the code in the Activated event
end)

--will run every time the tool is unequipped
tool.Unequipped:Connect(function()
	print("The player has unequipped the second tool")
end)

--will run every time the tool is activated
--this activation happen mmanually
tool.Activated:Connect(function()
	print("The second tool has been activated manually")
end)

--will run every time the tool is deactivated
--because we manually activated the tool,the player can click the mouse button to deactivate it
tool.Deactivated:Connect(function()
	print("The player has deactivated the second tool Manually")
end)

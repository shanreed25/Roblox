----local model = game.Workspace.Model
--because the script is inside the model, 
-- game.Workspace.Model is not needed
local model = script.Parent

--locate a part inside the model
--local part1 = model.Part1


--Dot Notation: returns the part if the child is found
--if child is not found, returns error: Part6 is not a valid member of Model "Workspace.Model"
--local part1 = model.Part6
--print(part1)

--VS--

--Bracket Notation: returns the part if the child is found
--if child is not found, returns error: Part6 is not a valid member of Model "Workspace.Model"
--local part1 = model["Part6"]
--print(part1)

--VS--

--FindFirstChild()------------------------------------
--FindFirstChild is a function that returns the child if the child is found
	--returns the child if the child is found
	-- if child is not found, returns nil
	
--local part1 = model:FindFirstChild("Part6")
--print(part1)

local ramp1 = model:FindFirstChild("Ramp1")

if ramp1 then
	ramp1.BrickColor = BrickColor.new("Cocoa")
end
--WaitForChild()---------------------------------------------------------
--WaitForChild is a function that waits for a child to be added to the given parent
	--returns the child if the child is found
	--if child is not found, yields(pauses) script until child is found

local ramp2 = model:WaitForChild("Ramp2")
print("Ramp 2 has been detected")

--local part10 = model:WaitForChild("Part10")
-----Run(not Test) this script and see what happens
----ERROR: Infinite yield possible on 
----'Workspace.Model:WaitForChild("Part10")'
----so because there is no part 10 the below 
----print statement will never run
--print("Part 10 has been detected")

--1.Create a part and name it: (my part is name TopFloor)
--2.Add a WaitForChild() Instance variable
local topFloor = model:WaitForChild("TopFloor")
	--Add a print statement after the WaitForChild() Instance variable
print("Part Top Floor has been detected")
--3. In Explorer Right click the part and select cut
--4.Run this script and see what happens
	--Run(not Test) this script and see what happens
--5. After you see Infinite yield possible on 'Workspace.Model:WaitForChild("BigBlock")' in the console
	--Right click the Model in Explorer and click paste into


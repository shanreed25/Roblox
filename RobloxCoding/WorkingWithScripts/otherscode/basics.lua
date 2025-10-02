--variables, functions, logical operators, 
--relational operators and if statements
--properties
local myFloor = game.Workspace.Baseplate
local function changeColor(color)
	myFloor.Color = color
	
end

local function changeMaterial(material)
	myFloor.Material = material
end

changeColor(Color3.new(0.4, 1, 0.2))
changeMaterial("Limestone")
--changeColor(Color3.new(0.8, 2, 0.6))
--changeMaterial("Pebble")

if not (2 + 2 == 4) then
	print("Not Happening")
end

if not (2 + 5 == 4) then
	print("4 is Not Happening")
end

--logical operators: returns true or false
	--and, both = true
	--or, either = true	
	--not, reverses the boolean value

--relational operators: returns true of false 
	-- ==(equal to), same = same = true
	--~=(not equal) different ~= different = true
	-- >(greater than), bigger > smaller = true
	-- <(less than), smaller < bigger = true
	-- >=(greater than or equal to), bigger/same >= smaller/same = true
	--<=(less then or equal to), smaller/same <= bigger/same = true
	
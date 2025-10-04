----for loop-------------------------------------------------------
----for myCounter = start, stop, moveNumber(increment/decrement) do
----moveNumber(increment/decrement) is 1 by default, so you do not need
	----to specify it in the for loop if it is going to be 1
----increment means to add to a value
----decrement means to subtract from a value

----for loop increment------------------
--for myCounter = 1, 5, 1 do
----print Iterate: 1, 2, 3 five times
--	print("Iterate:", 1, 2, 3)
--end

--for myCounter = 1, 5, 1 do
--	--prints 1 2 3 4 5 
--	print(myCounter)
--end

--local numToIncrement = 0
--for addForCounter = 1, 5, 1 do
--	--increment numToIncrement by 1
--	numToIncrement += 1
--	print("numToIncrement = ", numToIncrement)
--end
-----------------------------------------

----for loop decrement-------------------
--for myCounter = 5, 5, -1 do
----print Iterate: 1, 2, 3 five times
--	print("Iterate:", 1, 2, 3)
--end

--for myCounter = 5, 1, -1 do
----prints 5 4 3 2 1
--	print(myCounter)
--end

--local numToDecrement = 10
--for subtractForCounter = 1, 5, 1 do
--	--decrement numToDecrement by 1
--	numToDecrement -= 1
--	print("myNum = ", numToDecrement)

--end
-------------------------------------------

local baseplate = game.Workspace.Baseplate
for changeColor = 1, 5, 1 do
	baseplate.BrickColor = BrickColor.new('Lime green')
	--wait statement
	task.wait(1)
	baseplate.BrickColor = BrickColor.new('Hot pink')
	task.wait(1)
	baseplate.BrickColor = BrickColor.new('New Yeller')
	task.wait(1)
end

--order matters
--the game will wait for the changeColor for loop
--to finish before moving on to the next for loop
for myCounter = 1, 2, 1 do
	print(myCounter)
end
--math.random()------------------------------------------------------------
--math.random(minValue, maxValue) will give you a random number between 
	--minValue and maxValue, maxValue is inclusive
	--maxValue must be greater than minValue
--if you do not give it any numbers,like: math.random()
	--it will give you a random number between 0 and 1
	--the number will be a decimal, like 0.123456789





local smallRandomNumber = math.random()
print(smallRandomNumber)


local randomNumber = math.random(1, 6)
print(randomNumber)


--GOAL: Change the baseplate color to a random color

--TODO 1: Get the baseplate	
local baseplate = game.Workspace.Baseplate

--this is a infinite loop, this will never stop
--this is not recommended, but used here for demonstration purposes
while true do
	--TODO 2:Get Random color
		--need a red, green, and blue value
		--each of these values must be a number between 0 and 255
		--math.random(0, 255) will give you a random number between 0 and 255
	local redValue = math.random(0, 255)
	local greeValue = math.random(0, 255)
	local blueValue = math.random(0, 255)
	--each time the loop runs, redValue, greeValue, and blueValue 
	--will change, giving us a different color every time
	
	--TODO 3:Change the color of the baseplate
	
	--baseplate.Color will give us the color of the baseplate
	--baseplate.Color = will set the color of the baseplate
	--Color3.fromRGB(redValue, greeValue, blueValue) will give you a color
		--using the random values we got for each color
	baseplate.Color = Color3.fromRGB(redValue,greeValue, blueValue)
	
	--need a task.wait() to slow down the loop, 
		--otherwise it will run too fast and crash the game
	task.wait(2)
end
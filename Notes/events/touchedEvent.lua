--events: actions that happen based on other actions
------Touched Event
--Part, is an object that is a child of the game object
--Part.Touched, is an built in event that is a child of the Part object
--triggers when a player touches the part
--allows you to connect to a function to run when triggered
--Connect, is a function that is a child of the Part.Touched event
--Part.Touched:Connect(function(hitPart))
--this function is a callback function, a function that is called when an event is triggered
--the hitPart is a variable that is created when the event is triggered
--hitPart is a variable that holds the part that touched the part
--the hitPart is passed to the callback function when the event is triggered

--Achored Property means the part cannot move, not affected by gravity or other parts

--Syntax: game.Part.Touched:Connect(function(hitPart))


local partIsTouched = false


--TouchedPart is the name I created of the part
local touchedPart = game.Workspace.TouchedPart
touchedPart.Touched:Connect(function(touchedBy)
-- this event will keep triggering until the part stops touching the part
	
	
	--this if statement adds a debounce/check/cooldown to the touched event
	--this will make the event only trigger once per touch/5 seconds
	if partIsTouched == false then
		--part hasnt been touched
		partIsTouched = true
		print(touchedBy.name)
		
		--wait 5 seconds
		task.wait(5)
		--part can be touched again
		partIsTouched = false
	end
	
end)
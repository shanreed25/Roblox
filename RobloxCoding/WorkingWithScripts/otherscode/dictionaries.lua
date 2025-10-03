---TABLES----------------------------------------------
--a data structure that hold multiple pieces of data
--a collection of data contained together
-- arrays and dictionaries are two types of tables
--Tables: DICTIONARIES
	--tables that stores data as a key:value pair
	--each item is a key:value pair
	--its like a real dictionary, where each word has a definition attached to it
		--the word would be the key and the value would be the definition
		--just like a real dictionary we serch for a word to get the definition
		--we search for a key to get the value

-- Create a dictionary using {} and then add key:value pairs

--Option 1: Where the key is a string
--local playersLevel = {
--	--["key"] = value
--	["Jimmy"] = 15,
--	["Kimmy"] = 9,
--	["Simmy"] = 22,
--}
----print(playersLevel["Kimmy"], playersLevel["Jimmy"], playersLevel["Simmy"])

----change a value 
--playersLevel["Simmy"] = 23
--print(playersLevel["Kimmy"], playersLevel["Jimmy"], playersLevel["Simmy"])


----Option 2: Where the key is NOT a variable---------------------------------------------------------
--local playersLevels = {
--	--key = value
--	Jimmy = 15,
--	Kimmy = 9,
--	Simmy = 22,
--}
--print(playersLevels.Simmy, playersLevels.Kimmy, playersLevels.Jimmy)

--change a value 
--playersLevels.Kimmy = 10
--print(playersLevels.Simmy, playersLevels.Kimmy, playersLevels.Jimmy)


------------------------------------------------------------------------------
----Pairs Loops------------------------------------------------------------------------------
----loops through a dictionary and returns the key and value
----does not consider the order of the dictionary
----it will return the key and value in random order
--local playersLevel = {
--	--["key"] = value
--	["Jimmy"] = 15,
--	["Kimmy"] = 9,
--	["Simmy"] = 22,
--	["Wimmy"] = 12,
--	["Mimmy"] = 5,
--}

----Pairs Loop Syntax: for key, value in pairs(dict) do
--for player, level in pairs(playersLevel) do
--	print(player, level)
--end

--I Pairs Loops------------------------------------------------------------------------------
--loops through a dictionary and returns the key and value
--consider the order of the dictionary
--it will return the key and value in order
--local playersLevel = {
--	--["key"] = value
--	["Jimmy"] = 15,
--	["Kimmy"] = 9,
--	["Simmy"] = 22,
--	["Wimmy"] = 12,
--	["Mimmy"] = 5,
--}

----I Pairs Loop Syntax: for key, value in pairs(dict) do
--for player, level in pairs(playersLevel) do
--	print(player, level)
--end



--I Pairs Loops with Array------------------------------------------------------------------------------
local myArray = {10, 20, 30, 40, 50}

--for index, number in ipairs(myArray) do
--	print(index, number)
--end

--hiding index
--use a _ to hide the index, or value------------------------------------------------
--for _, number in ipairs(myArray) do
--	print(number)
--end


--prints the index-----------------------------------------------------------------------
for i in ipairs(myArray) do
	print(i)
end
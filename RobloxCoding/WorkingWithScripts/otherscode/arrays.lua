--TABLES----------------------------------------------
	--a data structure that hold multiple pieces of data
	--a collection of data contained together
-- arrays and dictionaries are two types of tables


--Tables: ARRAYS/LIST---------------------------------------
	--a collection of data contained together	
	--values are group in sequenctial order from left to right
	--each piece of data is indexed/referenced by a number
		--index/reference starts at 1
		--can contain any and different data types
		--can contain any number of data types
		--can be created with {} or table.new()
		--can be indexed with [index] or .key
		--can be iterated with for i = 1, #array do
		--can be passed by reference
		--can be nested
		--can be used as a stack, queue, or linked list
		--can be used as a set
local myArray = {10, "Hello", false, 100, "I am here"}
	--myArray[1] = 10
	--myArray[2] = "Hello"
	--myArray[3] = false
	--myArray[4] = 100
	--myArray[5] = "I am here"

--print(myArray[1])--prints 10
--print(myArray[2])--prints "Hello"

-----------------------------------------------------------
print(myArray)--will not print the values in our array
--will print the memory address of our array
--this is because print() will call tostring() on the values passed to it
--tostring() will return the memory address of the array
--to print the values in our array, we need to iterate through our array
--to iterate through our array, we can use a for loop
-------------------------------------------------------------


--to print our every value in our array, can be do a number of ways
------------------------------------
--Option 1: for loop
--for i in myArray do
--	print(myArray[i])
--end
-------------------------------------

--Option 2: for loop ranging from 1 to the length of our array
--the length of our array is the number of values in our array
--if the length of our array increases in our array
--then we need to change the maxValue of our for loop
--for index = 1, 5 do
--	print(myArray[index])
--end
--------------------------------------


--Option 3: for loop with # operator
--the # operator returns the length of our array
	--so if the length of the array changes we do not need to change the for loop
	--the # operator can be used on strings, arrays, and tables
for index = 1, #myArray do
	print(myArray[index])
end






--TABLES----------------------------------
--ADD and remove values from and to a table while the game is running
--Using table Library------------------------------------------------------------------------------------------------------
local myArray = {}--empty array
--this will print nothing because our array is empty
for i in myArray do
	print(myArray[i])
end

--table.insert(table, value)--------------------------------------------
table.insert(myArray, 100)

for i in myArray do
	print(myArray[i])
end


--local myArray2 = {300, "hello", true}
--table.insert(myArray2, 400)--will insert 400 at the end of the array

----table.insert(table, index, value)
--table.insert(myArray2, 2, false)--will insert false at index 2
--------------------------------------------------------------------

----table,remove()----------------------------------------------------------
----table.remove(table, index)-------------------------------
--table.remove(myArray2, 1)--will remove the value at index 1
----table.remove(table, value)--------------------------------
--table.remove(myArray2, 300)--will remove the value 300

----table.find(table, value)-------------------------------------------------
--will return the index of 500
--table.find(myArray2, 500)--will return the index of 500

----table.concat(table, separator)-------------------------------------------
--local stringArray = {"Jim", "Kim", "Sim", "Mim"}
--table.concat(stringArray, ", ")--will return a string with all values separated by ", "

----table.sort(table, function)----------------------------------------------
--local numberArray = {100, 60, 90, 30}
--table.sort(numberArray, function(a, b) return a > b end)--will sort the table in descending order

----table.clear(table)-------------------------------------------------------
--table.clear(myArray2)--will clear the table

----table.clone(table)-------------------------------------------------------
--table.clone(myArray2)--will clone the table

----table.move(table, index, length, newindex, newtable)---------------------
--local newArray = {}--create a new table
--table.move(myArray2, 1, 3, 5, newArray)--will move the first 3 values of myArray to newTable starting at index 5

---Find item with for loop

local myArray3 = {300, "hello", true, 50, false, 20, 60}
for i in myArray3 do
	if myArray3[i] == 50 then
		print("50 is in the array")
	end
end

----while loop-----------------------------------------------------
---- while true do
--local whileCounter = 1
----while loops value must be incremented or decremented in the loop
----DO NOT DO THIS, GAME WILL CRASH
--while whileCounter <= 5 do
--	--whileCounter will always be 1, 
--	--so it will never be greater then or equal to 5
--	--and this loop will never end
--	print("Indifinite while loop running....we are about to crash")
--end

----while loop Increment---------------------------------------------
--local whileCounter = 0
--while whileCounter <= 5 do
--	--increment the whileCounter by 1

--	--prints 1 2 3 4 5 6
--	--whileCounter += 1 
--	print("Increment:", whileCounter)
--	--prints 0 1 2 3 4 5
--	whileCounter += 1
--end

---DO NOT DO THIS WILL CRASH GAME--------------------------
--local whileCounter = 0
--while whileCounter <= 5 do
--	--decrement the whileCounter by 1

--	--prints 1 2 3 4 5 6
--	--whileCounter -= 1 
--	print("Increment:", whileCounter)
--	--prints 0 1 2 3 4 5
--	whileCounter -= 1
--end

local whileCounter = 5
while whileCounter >= 0 do
	--decrement the whileCounter by 1

	--prints 4 3 2 1 0 -1
	--whileCounter -= 1 
	print("Increment:", whileCounter)
	--prints 5 4 3 2 1 0
	whileCounter -= 1
end

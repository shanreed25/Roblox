
----task.wait(secondsToWait)----------------------------------------------------------
----Task1:
--print("Task 1: before ")

--task.wait(3)--wait 3 seconds before moving to the next line of code
----Task2:
--print("Task 2: after")
--------------------------------------------------------------------------------------


--task.delay(secondsToDelay, nextTaskFunction)----------------------------------------
--delays then runs the function after the delay

----Option 1: Create the function and pass it to  task.delay()
----Task to run after task.delay():
--local function delayTask()
--	print("After Delay Task")
--end
--task.delay(5, delayTask)
-------------------------------------------
----Option 2: creating the function inside task.delay()
--task.delay(5, function()
--	print("After Delay Task")
--end)


--print("During Delay")
--------------------------------------------------------------------------------------


----task.cancel(delayTask)------------------------------------------------------------
----do not run the function in the delay function if this happens
--print("If you get 1 you lose, If you get 2 you win.....")

--task.wait(3)
--local randomNumber = math.random(1,2)

--print(randomNumber)

--local delayTask = task.delay(3, function()
--	print("You Won!!")
--end)

--if randomNumber == 1 then
--	task.cancel(delayTask)
--	print("You Lose")
--end
--------------------------------------------------------------------------------------


----task.spawn()----------------------------------------------------------------------
--RUNS A FUNCTION IN A SEPARATE THREAD, DOES NOT WAIT FOR IT TO FINISH
--Run this code and see what it does compared to task,spawn

--local isLooping = true
----Task 1:---Task 2 will never run because the while loop never stops
--while isLooping do
--	print("Task 1: while loop")
--	task.wait()--automatically uses a number between 0 and 1
--end
----Task 2:
--for i = 1, 10 do
--	print("Task 2: ", i)
--	task.wait()
--end

--this line will never run because the while loop never stops
--isLooping = false



------task.spawn()----------------------------------------------------------------------
----two task to execute at the same time
----is like a thread, it allows you to run code at the same time as other code
----useful for working with loops
--local isLooping = true

--task.spawn(function()
--	while isLooping do
--		print("while loop")
--		task.wait()--automatically uses a number between 0 and 1
--	end
--	print("While loop done")
--end)

----Task 1:
--for i = 1, 10 do
--	print("Task 1: ", i)
--	task.wait()
--end

--isLooping = false
--print("isLooping = ", isLooping)




--------------------------------------------------------------------------------------

--task.defer(function)
--will defer the function to the end of the current thread
--it will run after all the code in the current thread has run
--it will run before the next task.wait() or task.defer()
--

--Task 1:
print("Task 1")

--Task 2:
task.defer(function()
	print("Task 2")
end)

--Task 3:
for i = 1, 10 do
	print("Task 3")
end

--Task 4:
--task.wait(3)
print("Task 4")
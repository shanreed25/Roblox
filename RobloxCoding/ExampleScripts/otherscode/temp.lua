







--these three lines of code get the button from the screen
--local giveCoinsButton = gui:FindFirstChild("GiveCoins") --this is a safer way of getting the button
--local giveCoinsButton = gui.GiveCoins--less safe but works
local giveCoinsButton = gui:WaitForChild("GiveCoins")--this is a safer way of getting the button




	--player.leaderstats.Coins.Value = player.leaderstats.Coins.Value + 100
	local leaderstats = player.leaderstats
	local coins = leaderstats.Coins
	coins.Value += 20
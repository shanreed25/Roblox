--this is a local script
--it runs on the client side

--get the GUI
local gui = script.Parent

--get the button from the GUI
local giveCoinsButton = gui:WaitForChild("GiveCoins")

--get the GiveCoins RemoteEvent
local giveCoinsEvent = game.ReplicatedStorage.GiveCoins


--when button is pressed, it will fire the event
giveCoinsButton.MouseButton1Click:Connect(function()
    --RemoteEvent:FireServer()
	giveCoinsEvent:FireServer()--fire the event to the server
    --.OnServerEvent:Connect() in the serverScript catches the event
    --the server will catch the event and add 20 coins to the player
	
end)


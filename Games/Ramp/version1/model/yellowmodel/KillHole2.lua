local hole = script.Parent

hole.Touched:Connect(function(otherPart)
	--check if the part that touched the hole is a player
	--otherPart is the part that touched the hole
		--when we touch something by walking on it we are either using 
		--our right or left foot, so otherPart will be the right or left foot
		--of the player
		--the player is a model with a humanoid in it, so the player is a humanoid here
	--otherPart.Parent is the model that the part is a child of
		--so the part is a child of the player and the player has a Humanoid
		--otherPart.Parent:FindFirstChild("Humanoid") is the humanoid of the player
		--if the humanoid is not nil, then the part is a player
	
	--check if the part that touched the hole is a player
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		--if the part is a player, then the player is in the hole
		
		--Kill the player
		humanoid.Health = 0
		
		
		
		
		--set the position of the player to the spawn location
		--otherPart.Parent:FindFirstChild("HumanoidRootPart") is the root part of the player
		--the root part is the part that the player is standing on
		--otherPart.Parent:FindFirstChild("HumanoidRootPart").CFrame = game.Workspace.SpawnLocation.CFrame
		--otherPart.Parent:FindFirstChild("HumanoidRootPart").Position = game.Workspace.SpawnLocation.Position
	end
end)
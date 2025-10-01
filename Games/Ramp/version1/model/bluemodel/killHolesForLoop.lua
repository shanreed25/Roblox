--assign the touched event to all four holes

--get the Hole1 part
local hole1 = script.Parent.Hole1
local hole2 = script.Parent.Hole2
local hole3 = script.Parent.Hole3
local hole4 = script.Parent.Hole4	

--put hole1, hole2, hole3, and hole4  into one variable (a table/array)
local holes = {hole1, hole2, hole3, hole4}

--To connect the Touched event for all holes, 
--we need to loop through the table and connect 
--the event for each part
for i, hole in holes do
    hole.Touched:Connect(function(otherPart)
        --check if the part that touched the hole is a player
        local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
        if humanoid then
            --Kill the player
            humanoid.Health = 0
            -- Optionally, set the position of the player to the spawn location
            -- local rootPart = otherPart.Parent:FindFirstChild("HumanoidRootPart")
            -- if rootPart then
            --     rootPart.CFrame = game.Workspace.SpawnLocation.CFrame
            -- end
        end
    end)
end


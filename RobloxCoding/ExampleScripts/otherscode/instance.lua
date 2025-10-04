--INSTANCE---------------
--Instance.new('ClassName')
--Instances are the building blocks of Roblox games
--They are used to create all objects in the game, including parts, models, and scripts
--You can create instances using the Instance.new() function
--For example, to create a new part, you would use Instance.new('Part')
--This would create a new part instance that you can then manipulate and add to the game world
--Instances have properties that you can set to change their appearance and behavior
--For example, you can set the Size, Position, and Color of a part instance
--You can also parent instances to other instances to create a hierarchy
--For example, you can parent a part instance to the Workspace instance to make it appear in the game world
--Instances can also have events that you can connect to functions to respond to changes in the instance
--For example, you can connect to the Touched event of a part instance to run a function when the part is touched by another object
--Overall, instances are a fundamental part of Roblox game development and are essential for creating interactive and engaging games
--Understanding how to create and manipulate instances is crucial for any Roblox developer
--Instance.new('ClassName', parent, properties)
--ClassName: The name of the class you want to create
--parent: (optional) The parent instance to which the new instance will be added
--properties: (optional) A table of properties to set on the new instance










--a instance is any object in the game
-- a script, a model, spawn location etc.....
--you can add instaces by using exploer or other places in the GUI
--but you can only create instaces before the game runs
--you can also create instances within a script
--this way you can create instances while the game is running
--Instance.new('ClassName')
--the constructor use to create a new instace
--ClassName is the name of the class you want to create

--Creating Instances Within A Script---------------------------------
local newPart = Instance.new('Part')--create a new Part


newPart.Name = 'NewPart'--set the name of the part

--newPart.Parent: is where the part will be placed
--game.Workspace: newPart will be placed in the workspace
--newPart will be a child of the workspace
newPart.Parent = game.Workspace



--newPart.Size = Vector3.new(10,10,10)--set the size of the part
--newPart.Position = Vector3.new(0,100,0)--set the position of the part
--newPart.Anchored = true--set the part to not move
--newPart.BrickColor = BrickColor.new('Bright red')--set the color of the part
--newPart.Transparency = 0.5--set the transparency of the part
--newPart.Material = Enum.Material.Neon--set the material of the part
--newPart.Shape = Enum.PartType.Ball--set the shape of the part
--newPart.CanCollide = false--set the part to not collide with other parts


--Instance Data Types-------------------------------
--we can use data types as instances in the GUI and in scripts 

--Players Folder: Inside of Workspace, shows all the player in the game
--You need to Run the game to see this folder
--Workspace.Players
--the Players folder contains the player objects
--Each player object in this folder has a player object folder
--to add stats to the player we need to add it to the player object folder
--Player Character Folder: Inside of Workspace
--Workspace.characterName(mine is Workspace.laneypopwow )

--INSTANCE---------------
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

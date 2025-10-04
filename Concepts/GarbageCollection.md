# Garbage Collection
- handling unnecessary or unneeded objects or instances

## part:Remove()
- removes the part from the game and the explorer window
- sets the parent of the part to nil
- but the part is still in memory and floating around in the game somewhere
```lua
task.wait(6)--do not do this this is just for demonstratio purposes
    --using task.wait() is not a good way to do this
    --use the Debris Service instead 
local part = script.Parent
part:Remove()
```
## part:Destroy()
- removes the part from the game and the explorer window
- sets the parent of the part to nil
- locks the parent of the part and disconnects all connections
- removes the part from memory
- prevents memory leaks
- only use this if you need to remove a object without having to wait
    ```lua
    task.wait(6)--do not do this this is just for demonstratio purposes
        --using task.wait() is not a good way to do this
        --use the Debris Service instead 
    local part = script.Parent
    part:Destory()
    ```

### Debris Module Service: game.Debris:AddItem()
- is used to remove items from the game
- use when you need to remove an object after a certain amount of time

```lua
local part = script.Parent
game.Debris:AddItem(part, 6)
--add part to the debris service after 6 seconds


--game.Debris:AddItem(part, 6, true)
--game.Debris:AddItem(part, 6, false)
--game.Debris:AddItem(part, 6, nil)
--game.Debris:AddItem(part, 6, 0)
--game.Debris:AddItem(part, 6, -1)
--game.Debris:AddItem(part, 6, "Hello")
--game.Debris:AddItem(part, 6, {Hello = "World"})
--game.Debris:AddItem(part, 6, function() print("Hello World") end)
--game.Debris:AddItem(part, 6, coroutine.create(function() print("Hello World") end))
--handles garbage collection when you want to delete 
--a part within a specific amount of time
```
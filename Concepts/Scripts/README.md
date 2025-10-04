# 📜 Scripts
**Instructions that we give to the computer so the computer knows what to do**
- used to add custom behaviors and interactivity to a Roblox experience, allowing developers to automate actions, respond to player input, create game mechanics like leaderboards, and control NPCs
- they instruct the Roblox engine to perform operations on its data model
- Scripts use Luau, a language based on Lua, to define instructions for the game. 
- To understand how scripts work in Roblox you must understand the [Client-Server Model](./ClientServerModel.md) that Roblox uses

## ✨ Roblox Scripts
- **Can be categorized into three main types:** 
    - [Server Scripts](./ServerScripts.md)
        - for server-side actions affecting all players
    - [LocalScripts](./LocalScripts.md)
        - for player-specific actions visible only to that client
    - [ModuleScripts](./ModuleScripts.md)
        - for organizing and reusing code across other scripts

## 👁️ How Roblox Scripts Work
- **Programming Language:** Scripts use Luau, a language based on Lua, to define instructions for the game. 
- **Engine Interaction:** Scripts interact with the Roblox engine's [data model](../DataModel.md) to manipulate game elements and trigger events. 

### Simulate and Test
**To "simulate" your scripts in Roblox, you need to run the game or use the dedicated testing modes in Roblox Studio to see your scripts in action and check for errors.**
- allows you to test how your Luau code behaves in a live, or simulated multi-client, environment, helping you debug and refine your scripts before publishing your game to the public
- **Test (or Play):**starts a playtest by inserting your avatar at a designated spawn location within your game
    - simulates a player joining the game as they would on the Roblox platform, starting from a spawn point.
- **Test Here (or Play Here):** starts a playtest by inserting your avatar directly in front of the camera's current position in the Studio view
    - useful for quickly testing specific areas or elements of your game without needing to navigate from a spawn point
- **Run:** starts the game simulation without inserting your avatar
    - the playtest begins at the current camera position, and you can navigate around the environment using the camera controls
    - this mode is primarily used for testing scripts, physics, and other game mechanics without the influence of a player character
    - you can observe how objects fall or how scripts interact with the environment without an avatar present. 
- **Servers & Clients:** refer to the distinct computing environments within these simulations
    - Learn More aboudt the Servers & Clients [here](../ClientServerModel.md)









### Start Writing Scripts
- to start writing scripts make sure you have the explorer, properties and output windows visiable


- [Client-Server Model](./ClientServerModel.md)
- [Garbage Collection](./GarbageCollection.md)
- [Server Scripts](./ServerScripts.md)
- [LocalScripts](./LocalScripts.md)
- [ModuleScripts](./ModuleScripts.md)
- [Conditionals](./conditionals/README.md)
- [Events](./events/README.md)
- [Colors](./otherscode/colors.lua)


<!-- ### 
- Variables
    - like a named box with some information in it
- Function
- Events -->

<!-- 
- Beginner Scripting - https://www.youtube.com/watch?v=dRgvhjr2Dx0
- Advanced Scripting - https://www.youtube.com/watch?v=dRgvhjr2Dx0 



-->





###
- [Data Model](./DataModel.md)
- [Working With Scripts](../WorkingWithScripts/README.md)
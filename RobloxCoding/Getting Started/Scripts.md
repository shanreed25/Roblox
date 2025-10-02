# 📜 Scripts
**Instructions that we give to the computer so the computer knows what to do**
- used to add custom behaviors and interactivity to a Roblox experience, allowing developers to automate actions, respond to player input, create game mechanics like leaderboards, and control NPCs
- they instruct the Roblox engine to perform operations on its data model
- Scripts use Luau, a language based on Lua, to define instructions for the game. 
- **Can be categorized into three main types:** 
    - **Server Scripts:** for server-side actions affecting all players
        - run on the game's server and affect all players, handling shared game logic. 
    - **LocalScripts:** for player-specific actions visible only to that client
        - run on a player's client, affecting only that specific user and used for UI or player-specific features. 
    - **ModuleScripts:** for organizing and reusing code across other scripts
        - are for code organization and reusability, allowing other scripts to call their functions. 

## 👁️ How Roblox Scripts Work
- **Programming Language:** Scripts use Luau, a language based on Lua, to define instructions for the game. 
- **Engine Interaction:** Scripts interact with the Roblox engine's [data model](./DataModel.md) to manipulate game elements and trigger events. 


###
- [Data Model](./DataModel.md)
- [Working With Scripts](../WorkingWithScripts/README.md)
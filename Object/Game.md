# DataModel(.game)
- the root Instance of Roblox's parent/child hierarchy
    - `.game` is a reference to the DataModel 
    - https://create.roblox.com/docs/reference/engine/classes/DataModel

- direct children are services, such as Workspace and Lighting
    - thes are the fundamental components of a Roblox game

# Scripts
**Instructions that we give to the computer so the computer knows what to do**
- used to add custom behaviors and interactivity to a Roblox experience, allowing developers to automate actions, respond to player input, create game mechanics like leaderboards, and control NPCs
- they instruct the Roblox engine to perform operations on its data model
- **Can be categorized into three main types:** 
    - **Scripts:** for server-side actions affecting all players
    - **LocalScripts:** for player-specific actions visible only to that client
    - **ModuleScripts:** for organizing and reusing code across other scripts
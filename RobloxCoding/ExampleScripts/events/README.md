# 🎉 Events
- events are fundamental for making experiences interactive and dynamic
- allow scripts to respond to various occurrences, such as user input, changes in the game world, or communication between different parts of your game

## 🔓 Accessing Events
- you access an event by connecting to it using the `:Connect()` method
- you then pass a function to handle the event(event handling function) to the `:Connect()` method
    - the event handling function is the callback function that will be passed to the `:Connect()` method
    - `:Connect(cbFunction())` 
    - `cbFunction()` will execute every time the event happens
-  Use `EventName:Connect(yourcbFunction())` to establish the connection

- if at any point you want to stop the event from triggering the `cbFunction` use `connection:Disconnect()`
- See an example of using the `:Connect()` method [here]()


### 🔑 Key related methods
- **Once(function):**
    - Connects a function to an event for a single execution, automatically disconnecting afterward.  
- **Wait():**
    - Yields the current thread until the event fires, returning the arguments from the signal. 
- **ConnectParallel(function):**
    - Connects a function to an event, running the callback in a synchronized state under the same actor. 


## 🎁 Built-in Events
**Roblox Studio provides numerous built-in events for various objects and services:**
- **Part.Touched:** Fires when a Part touches another object.
- **PlayerAdded (from Players service):** Fires when a player joins the game.
- **CharacterAdded (from Player object):** Fires when a player's character spawns.
- **RunService.Heartbeat:** Fires every frame, useful for continuous updates.

## 💭 Custom Events with BindableEvents
- developers can create custom events using BindableEvent instances
- allows for communication between different scripts or modules within the same environment (server-side or client-side).


## 📦 RemoteEvents for Client-Server Communication
- RemoteEvent and RemoteFunction facilitate communication between client-side scripts (LocalScripts) and server-side scripts (Scripts), allowing events to be fired and functions to be called across the client-server boundary.

### 🛍️ Finding and Using Events:
- **[Roblox Creator Hub API Reference:](https://create.roblox.com/docs/scripting/events)**
    - the primary resource for finding information about specific events is the Roblox Creator Hub's API Reference Manual
    - navigate to the documentation for the specific class or service you are interested in (e.g., BasePart, Players, RunService) and look for the "Events" section.
- **[Object Browser in Roblox Studio:]**
- the Object Browser in Roblox Studio provides a visual way to explore an object's properties, functions, and events, including descriptions and arguments.


### Event Script Examples
- [PlayerAdded](./playerAddedEvent.lua)
- [Tool Events](./toolevents.lua)
- [TouchedEvent](./touchedEvent.lua)
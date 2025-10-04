# Roblox Task Scheduler
- the Roblox engine's internal system for coordinating and executing tasks
    - it controls everything from user input and physics to character animations and script execution
    - it uses its own internal processes and is crucial for game responsiveness
- runs tasks in a specific order during each game frame
- ensures that the game remains responsive and doesn't freeze
- it allows developers to schedule code to run at specific times or in response to game events using the **task** and **coroutine** libraries
- tasks are organized into cycles, and the scheduler manages when tasks are resumed after being paused
- [More Info](https://create.roblox.com/docs/scripting/scheduler)

### task Library:
**Developers can access the Task Scheduler through the task library to schedule and control the execution of their code.**
- **`spawn()`**: executes a function or coroutine immediately. 
- **`delay()`**: schedules a function or coroutine to run after a specified amount of time. 
- **`defer()`**: places a function or coroutine for execution at the end of the current resumption cycle. 
- **`wait()`**: pauses a thread until a specified time, allowing other tasks to run. 

### MicroProfiler
**Built-in tool in Roblox Studio (accessible by pressing Ctrl+F6) provides real-time information on Task Scheduler processes, helping developers optimize performance.**
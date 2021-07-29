# ProgressUtilities-Lua

Created just for learning purposes, but feel free to use in your projects, change the code and redistribute.
any mention or credit is highly appreciated =3

# Simple Documentation

Some functions will be explained here:

# progress.Create

Use: ```progress.Create(wait-time)```

This function start the progress counter on your project.
It only require **one** input, this input is the wait time or wait seconds

**Example**:
```progress.Create(1)```

Every **1** second(s) this will add a value to progress.

# progress.Edit

Use: ```progress.Edit(ValueName, Value)```

This function is used to edit some values you want, to create your progress.

**Example**:

```progress.Edit(AddValue, 4)```

On function ```progress.Create()``` it will add 4 to value every time.

**Example2**:
```lua
progress.AddValue(5)                -- edit value "AddValue"
progress.WaitTime(0.1)              -- edit value "WaitTime"
progress.Create(0)                  -- Create the progress
```
You can create a simple function to help with this setup

**Example 3**:
``` lua
function setup()
    progress.AddValue(5)
    progress.WaitTime(0.1)
    progress.MaxValue(100)
    progress.Message("Loading Content.")
    progress.Style(4)    
end
```

**Output**:
```
====================================
    Loading your content (45%)
====================================
```

These function are made to edit the progress content:

```lua
progress.AddValue()             -- This function add to counter
progress.WaitTime()             -- This function is a sleep function to wait.
progress.MaxValue()             -- Set the maximum value, and if the counter reach this value it will be stopped
progress.Message()              -- Set your custom loading message
progress.Style()                -- Select the style, for now available [0, 1, 2, 3]
``` 

# Debug functions (Optional)

````lua
progress.ForceDraw()            -- This function force draw the loading style
progress.ValueTable()           -- This function will only show the variables
````


## How to import

[image]: 

**[1]** Download the code
![alt text][image]

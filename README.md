# ProgressUtilities-Lua

[image2]: https://github.com/Doge2Dev/ProgressUtilities-Lua/blob/main/imgDocs/2.png

Created just for learning purposes, but feel free to use in your projects, change the code and redistribute.
any mention or credit is highly appreciated =3

# Simple Documentation

Some functions will be explained here:

![alt-text][image2]

# progress.Create

Use: ```progress.Create()```

This function start the progress counter on your project.
Not require any input.

**Example**:
```progress.Create()```

Every **1** second(s) this will add a value to progress.

# edit functions

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


## How to import

[image]: https://github.com/Doge2Dev/ProgressUtilities-Lua/blob/main/imgDocs/1.png

**[1]** Download the code

![alt text][image]

**[2]** Import to your script

```lua
local progress = require 'ProgressUtils'
```



## Here some example to how you use:

```lua
local progress = require 'ProgressUtils'        -- just the module

-- Function to configure the progress
function progressSetup()
    progress.AddValue(5)
    progress.WaitTime(0.001)
    progress.MaxValue(100)
    progress.Message("loading...")
    progress.StyleID(3)
end

progressSetup()

-- Initialize the progress
progress.Create()

-- show the current module version (useless)
progress.Version()
```


Created by BakaDoge_Dev =3

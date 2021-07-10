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
progress.Edit(AddValue, 4)          -- edit value "AddValue"
progress.edit(WaitTime, 1)          -- edit value "WaitTime"
progress.Create(0)                  -- Create the progress
```
You can create a simple function to help with this setup

**Example 3**:
``` lua
function setup()
    progress.Edit(AddValue, 4)
    progress.edit(WaitTime, 1) 
    progress.edit(MaxValue, 100
    progress.edit(Message, "loading your content")
    progress.edit(Style, 2)
end
```

**Output**:
```
====================================
    Loading your content (45%)
====================================
```

This function require two arguments, you see on the examples need the "ValueName" and "Value".
The "ValueName" input is always a string, because is the name of the value you want edit to your progress.
But the "Value" input can be a string or a number.

## Here all the values available for this function:

| Value name | Value Type | Description |         
|:---:|:---:|:---:
| WaitTime | Number (int or Float) | fucntion to do a "little" stop |
| AddValue | Number (Int) | Add value every second |
| MaxValue | Number (Int) | Set the max value for progress |
| Message | String | Write your loading message |
| Style | Number (Int) | Set the loading style |

## How to import

**[1]** Download the code


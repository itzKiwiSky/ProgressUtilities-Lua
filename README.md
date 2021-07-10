# ProgressUtilities-Lua

Created just for learning purposes, but feel free to use in your projects, change the code and redistribute.
any mention or credit is highly appreciated =3

# Simple Documentation
======

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

On function progress.Create() it will add 4 to value every time.

**Example2**:
```
progress.Edit(AddValue, 4)          -- edit value "AddValue"
progress.edit(WaitTime, 1)          -- edit value "WaitTime"
progress.Create(0)                  -- Create the progress
```



--start code

local progress = {}     -- index table definition

--external functions

function sleep(secs)
    local start = os.time()
    repeat until os.time() > start + secs
end

function clear()
    os.execute("cls")
end

------------------------

--variables
local progressActive = 0                --if == 1 continue loop
local CurrentValue = 0                  --current progress value
local MaxValue = nil
local progressStyle = nil
local AddValue = nil
local messageString = nil


-- create progress function
function progress.Create(id)
    progressActive = 1

    while progressActive == 1 do
        currentValue = currentValue + AddValue
        sleep(waitTime)
        clear()
        DrawProgress(progressStyle)

        if currentValue == MaxValue and progressActive == 1 then
            progressActive = 0
            clear()    
        end

    end
    
end
---------------------------

--edit values function

function progress.Edit(valueName, value)

    --string functions for edit values
    if valueName == "MaxValue" then
        MaxValue = value
    end

    if valueName == "Style" then
        progressStyle = value
    end

    if valueName == "AddValue" then
        AddValue = value
    end

    if valueName == "Message" then
        messageString = value
    end

    if valueName == "WaitTime" then
        waitTime = value
    end

end

function progress.Version()
    print("Progress Utitlites")
    print("By BakaDoge")
    print("Version 1.0")
end

-- external function to draw all the message
function DrawProgress(styleArgs)
    
    if styleArgs == 0 then
        print(messageString .. "[" .. currentValue .. "]" .. "%")
    end
   
    if styleArgs == 1 then
        print("-=[" .. messageString .. " " .. "(" .. currentValue .. "%" .. ")" .. "]=-")
    end
  
       
    if styleArgs == 2 then
        print("====================================")
        print("      " .. messageString .. " " .. "(" .. currentValue .. "%" .. ")")
        print("====================================")
    end
  
       
    if styleArgs == 3 then
        print("#==========[]" .. messageString  .. "[]=============#")
        print("       ".. "-=[" .. currentValue .. "%" .. "]=-")
        print("#===================================#")
    end
  
end

--function to end the progress
function progress.ForceEnd(args)

    progressActive = 0
    clear()
    
end

return progress



--[[
        functions (Official)

progress.Create()
progress.Edit()
progress.Version()

--------------------------------------------
        functions (debug lib)

progress.Draw()
progress.warn()
]]--

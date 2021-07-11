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
local progressActive = 0                 --if == 1 continue loop
local progressAwait = 0                  --current progress value
local MaxValue = nil
local progressStyle = nil
local AddValue = nil
local messageString = nil
local waitTime = nil


-- create progress function
function progress.Create()
    progressActive = 1

    while progressActive == 1 do
        progressAwait = progressAwait + AddValue
        sleep(waitTime)
        clear()
        DrawProgress(progressStyle)

        if progressAwait == MaxValue and progressActive == 1 then
            progressActive = 0
            clear()    
        end

    end
    
end
---------------------------

--edit values function

function progress.AddValue(value)
    AddValue = value
end

function progress.WaitTime(value)
    waitTime = value
end

function progress.MaxValue(value)
    MaxValue = value
end

function progress.Message(value)
    messageString = value
end

function progress.StyleID(value)
    progressStyle = value
end


function progress.Version()
    print("Progress Utitlites")
    print("By BakaDoge")
    print("Version 1.0")
end

function DrawProgress(styleArgs)
    
    if styleArgs == 0 then
        print(messageString .. "[" .. progressAwait .. "]" .. "%")
    end
   
    if styleArgs == 1 then
        print("-=[" .. messageString .. " " .. "(" .. progressAwait .. "%" .. ")" .. "]=-")
    end
  
       
    if styleArgs == 2 then
        print("====================================")
        print("      " .. messageString .. " " .. "(" .. progressAwait .. "%" .. ")")
        print("====================================")
    end
  
       
    if styleArgs == 3 then
        print("#==========[]" .. messageString  .. "[]=============#")
        print("       " .. "-=[" .. progressAwait .. "%" .. "]=-")
    end
  
end

return progress



--[[
        functions

progress.Create()
progress.Edit()
progress.Version()

]]--

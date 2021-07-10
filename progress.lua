--[[
-------------------------------------------------
		[Progress Creator Utillities]
			By BakaDoge_Dev
				v1.1.0
-------------------------------------------------
]]--

-- variables starts
function sleep(secs)
	local start = os.time()
	repeat until os.time() > start + secs
end

function clear()
	os.execute("cls")
end

local style = 0
local progressval = 0
local activeProgress = 0

-- code

function progressCreate(waitTime, addValue, maxValue, messageString, progressStyle, debugString)
		-- function to check progress and add values
	progressval = 0
	activeProgress = 1

	--jut a debug string
	if debugString == 1 then
		print("Initializing...")
	end
	
	--loop while progress is continue
	while activeProgress == 1 and progressStyle == 0 do
		progressval = progressval + addValue
		sleep(waitTime)
		clear()
		print(messageString .. "[" .. progressval .. "]" .. "%")
		

		-- end of this loop
		if activeProgress == 1 and progressval >= maxValue then
			activeProgress = 0
			progressval = 0
		end
	end

	while activeProgress == 1 and progressStyle == 1 do
		progressval = progressval + addValue
		sleep(waitTime)
		clear()
		print(messageString .. "-=[" .. progressval .. "%" .. "]=-")
		

		-- end of this loop
		if activeProgress == 1 and progressval >= maxValue then
			activeProgress = 0
			progressval = 0
		end

	end

	while activeProgress == 1 and progressStyle == 2 do
		progressval = progressval + addValue
		sleep(waitTime)
		clear()
		print("-=[" .. messageString .. "]=-" .. "(" .. progressval .. "%" .. ")")
		

		-- end of this loop
		if activeProgress == 1 and progressval >= maxValue then
			activeProgress = 0
			progressval = 0
		end
		
	end

	while activeProgress == 1 and progressStyle == 3 do
		progressval = progressval + addValue
		sleep(waitTime)
		clear()
		print("==============================")
		print("   " .. messageString .. "[" .. progressval .. "%" .. "]")
		print("==============================")
		

		-- end of this loop
		if activeProgress == 1 and progressval >= maxValue then
			activeProgress = 0
			progressval = 0
		end
		
	end

end

---
permalink: /cgi/timestamp/index.lua
---

-- Set the timezone (not directly supported in Lua)
-- You'll need to handle timezone conversion manually if needed

-- Get current time
local timestamp = os.date("%Y.%m.%d-%H:%M:%S")

-- Get current time in milliseconds
local milliseconds = os.time() * 1000

-- Output the HTTP header
io.write("Content-Type: text/plain; charset=utf-8\r\n\r\n")

-- Output result
io.write(timestamp .. '.' .. milliseconds)


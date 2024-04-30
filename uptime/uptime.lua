---
permalink: /cgi/uptime/index.lua
---

-- Function to execute shell commands
local function shell_exec(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

-- Execute shell commands
local uptime = shell_exec('uptime -p')
--local version = shell_exec('uptime -V')

-- Output the HTTP header
io.write("Content-Type: text/plain; charset=utf-8\r\n\r\n")

-- Output the result
--io.write('Server ' .. version:sub(1, -2) .. ': ' .. uptime)
io.write(uptime)


---
permalink: /cgi/lighttpd/index.lua
---

-- Function to execute shell commands
local function shell_exec(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

local lighttpd = shell_exec('lighttpd -v')

io.write("Content-Type: text/plain; charset=utf-8\r\n\r\n")

io.write(lighttpd:sub(10, 15))


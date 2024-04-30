---
permalink: /cgi/lua/index.lua
---

print('Cache-control: no-cache')
print('Pragma: no-cache')
print("Content-type: text/plain; charset=utf-8")
print()
print("Hello from Lua!")
print()
print("print(os.date('%a %b %d %H:%M:%S %Z %Y'))")
print(os.date("%a %b %d %H:%M:%S %Z %Y"))
print()
print("for i = 1,10 do print(i) end")
for i = 1,10 do print(i) end


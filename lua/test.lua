---
permalink: /cgi/lua/test.lua
---

package.path = '{{ site.libdir }}/lua/?.lua;' .. package.path

require('xw3.session')

--[=====[
A multiline comment...
--]=====]

print('Cache-control: no-cache')
print('Pragma: no-cache')
print('Content-type: text/plain; charset=utf-8')
print()

--print(os.getenv("HTTP_COOKIE"))
--print()
--print(package.path)
--print()
--print(max(1, 10))
--print()
--print("Hello from Lua!")
--print()
--print(os.getenv("HTTP_COOKIE"))
--print()
print(os.execute('/usr/bin/env | /usr/bin/sort'))
print()
--print(debug.traceback("Stack trace"))
--print(debug.getinfo(1))


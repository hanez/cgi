---
permalink: /cgi/lua/test.lua
---

package.path = '{{ site.libdir }}/lua/?.lua;' .. package.path

require('xw3.http')
--require('xw3.session')

--[=====[
A multiline comment...
--]=====]

print('Cache-control: no-cache')
print('Pragma: no-cache')
print('Set-Cookie: HANNES=HANNES; expires=Mon, 17-Jul-2055 16:06:00 GMT; Max-Age=31449600; Path=/; secure')
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
print('HTTP_COOKIE:')
print(os.getenv("HTTP_COOKIE"))
print()

local input = os.getenv("HTTP_COOKIE")

local cookies = parse_cookies(input)

for k, v in pairs(cookies) do
    print(k, v)
end



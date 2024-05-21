---
permalink: /cgi/lua/test.lua
---

package.path = '{{ site.libdir }}/lua/?.lua;'..package.path

require('xw3.http')

--[=====[
https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies
https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers
https://developer.mozilla.org/en-US/docs/Glossary/Request_header
https://developer.mozilla.org/en-US/docs/Glossary/Response_header
--]=====]

math.randomseed(os.time())
math.random(); math.random(); math.random()

print('Cache-control: no-cache')
print('Pragma: no-cache')
print('Set-Cookie: KEY='..math.random()..'; expires=Mon, 17-Jul-2055 16:06:00 GMT; Max-Age=31449600; Path=/; secure')
print('Content-type: text/plain; charset=utf-8')
print()
print(os.execute('/usr/bin/env | /usr/bin/sort'))
print()
--print(debug.traceback("Stack trace"))
--print(debug.getinfo(1))
print('HTTP_COOKIES:')
print(os.getenv("HTTP_COOKIE"))
print()

local input = os.getenv("HTTP_COOKIE")

local cookies = parse_cookies(input)

for k, v in pairs(cookies) do
    print(k, v)
end


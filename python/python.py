---
permalink: /cgi/python/index.py
---

from datetime import datetime
#from http import HTTPStatus
#from pprint import pprint

print("Content-type: text/plain; charset=utf-8\n")
#print(HTTPStatus.OK.value)
print("Hello from Python!")
print("")
print('print(datetime.today().strftime("%a %b %d %H:%M:%S %Y"))')
print(datetime.today().strftime('%a %b %d %H:%M:%S %Y'))
print("")
print("for i in range(1, 11): print(i);")

for i in range(1, 11): print(i);


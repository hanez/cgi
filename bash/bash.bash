---
permalink: /cgi/bash/index.bash
---

echo "Content-type: text/plain; charset=utf-8"
echo
echo "Hello from bash!"
echo
echo 'date'
date
echo
echo 'for i in $(seq 1 10); do echo $i; done'

for i in $(seq 1 10); do echo $i; done


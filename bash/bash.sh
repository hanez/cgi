---
permalink: /cgi/bash/index.sh
---

echo "Content-type: text/plain"
echo
echo "Hello from bash!"
echo
echo 'date'
date
echo
echo 'for i in $(seq 1 10); do echo $i; done'

for i in $(seq 1 10); do echo $i; done


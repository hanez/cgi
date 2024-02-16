---
permalink: /cgi/ruby/index.rb
---

puts('Content-type: text/plain; charset=utf-8')
puts
puts('Hello from Ruby!')
puts
puts('puts(Time.now.strftime("%d/%m/%Y %H:%M"))')
puts(Time.now.strftime("%d/%m/%Y %H:%M"))
puts
puts("(1..10).each { |n| puts n }")

(1..10).each { |n| puts n }


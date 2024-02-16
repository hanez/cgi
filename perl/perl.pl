---
permalink: /cgi/perl/index.pl
---

use warnings;
use strict;
use POSIX qw(strftime);

print("Content-type: text/plain; charset=utf-8\n\n");
print("Hello from Perl!\n\n");
print("print(strftime('%m/%d/%Y %Z', localtime));\n");
print(strftime("%m/%d/%Y %Z", localtime));
print("\n\n");
print('my @i = (1..10); for(@i) { print("$_", "\n"); }');
print("\n");

my @i = (1..10); for(@i) { print("$_", "\n"); }


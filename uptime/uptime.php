---
permalink: /cgi/uptime/obsolete.php
---

<?php
$uptime = shell_exec('uptime');
$version = shell_exec('uptime -V');

header('Content-Type: text/plain; charset=utf-8');
echo('Server ' . substr($version, 0, -1) . ': ' . $uptime);
?>

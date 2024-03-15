---
permalink: /cgi/timestamp/obsolete.php
---

<?php
session_start();
session_set_cookie_params(3600);

date_default_timezone_set("{{ site.timezone }}");

$timestamp = date('Y.m.d-h:i:s', time());

$milliseconds = floor(microtime(true) * 1000);

#echo($timestamp . "_" . time() . "_" . $milliseconds);

header('Content-Type: text/plain; charset=utf-8');
echo($timestamp . '.' . microtime(true));
?>

<?php
//phpinfo();
$redis = new \Redis();
$redis->connect('redis.duapp.com');
var_dump($redis);
?>
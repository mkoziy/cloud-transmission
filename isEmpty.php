<?php

$path = !empty($argv[1]) ? $argv[1] : '';
echo (int) (count(scandir($path)) <= 2);

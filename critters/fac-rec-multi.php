<?php
function fac($n) {
    if ($n < 2)
        return 1;
    else
        return $n * fac($n - 1);
}
$time = microtime(true);
for ($i=0; $i<100000; $i++) {
    fac(100);
}
$time = microtime(true) - $time;
echo "\n{$time} sec\n";

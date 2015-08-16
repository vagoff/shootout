<?php
function fac($n) {
    if ($n < 2)
        return 1;
    else
        return $n * fac($n - 1);
}
echo "\n".fac(100)."\n";

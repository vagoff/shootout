import os
import strutils
#let programName = paramStr(0)
let arguments = commandLineParams()

proc loop3(x:BiggestInt):BiggestInt =
  var r:BiggestInt = 0
  for i in 1..1000:
    for j in 1..1000:
      for k in 1..x:
        r += BiggestInt(i) * BiggestInt(j) * BiggestInt(k)
  return r

echo( loop3( parseBiggestInt(arguments[0]) ))

#for i in 1..5:
#    echo($i)


import os
import strutils
#let programName = paramStr(0)
let arguments = commandLineParams()

proc fac(x:int64):int64 =
  if x > 0: x * fac(x - 1)
  else: 1

echo( fac( parseBiggestInt(arguments[0]) ))


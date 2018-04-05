@echo off
set T_FILENAME="Lightening Force - Quest for the Darkstar (U) [c][!].gen"
set SCRIPTNAME="thunderforce4"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause

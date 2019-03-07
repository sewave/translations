@echo off
set T_FILENAME="Super Shadow of the Beast (U).smc"
set SCRIPTNAME="supershadowofthebeastsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause

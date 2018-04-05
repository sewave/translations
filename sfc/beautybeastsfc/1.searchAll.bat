@echo off
set T_FILENAME="Beauty and the Beast (U).smc"
set SCRIPTNAME="beautybeastsfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

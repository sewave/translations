@echo off 
set T_FILENAME="Prince of Persia (E).sms"
set SCRIPTNAME="ppersiasms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 

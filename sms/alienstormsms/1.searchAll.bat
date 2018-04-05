@echo off
set T_FILENAME="Alien Storm (E) [!].sms"
set SCRIPTNAME="alienstormsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

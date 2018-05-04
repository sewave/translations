@echo off
set T_FILENAME="Growl (U) [!].bin"
set SCRIPTNAME="growlsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

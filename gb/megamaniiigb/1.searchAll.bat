@echo off
set T_FILENAME="Megaman III (U) [!].gb"
set SCRIPTNAME="megamaniiigb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

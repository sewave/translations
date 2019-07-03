@echo off
set T_FILENAME="Tiny Toon Adventures - Acme All-Stars (U) [!].gen"
set SCRIPTNAME="tinytoonadventuresacmeallstarsssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

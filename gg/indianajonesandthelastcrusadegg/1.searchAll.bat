@echo off
set T_FILENAME="Indiana Jones and the Last Crusade (U).gg"
set SCRIPTNAME="indianajonesandthelastcrusadegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

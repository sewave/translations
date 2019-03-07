@echo off
set T_FILENAME="Ariel - The Little Mermaid (B).sms"
set SCRIPTNAME="arielthelittlemermaidsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

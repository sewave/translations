@echo off
set T_FILENAME="High School! Kimengumi (J) [T+ENG].sms"
set SCRIPTNAME="highschoolkimengumisms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause

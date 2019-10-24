@echo off
set T_FILENAME="Dead Angle (UE) [!].sms"
set SCRIPTNAME="deadanglesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

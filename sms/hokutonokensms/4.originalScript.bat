@echo off
set T_FILENAME="Hokuto no Ken (J) [T+ENG].sms"
set SCRIPTNAME="hokutonokensms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

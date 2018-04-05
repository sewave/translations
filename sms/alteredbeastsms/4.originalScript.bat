@echo off
set T_FILENAME="Altered Beast (UE) [!].sms"
set SCRIPTNAME="alteredbeastsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

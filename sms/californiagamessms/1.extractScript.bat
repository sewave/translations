@echo off
set T_FILENAME="California Games (UE) [!].sms"
set SCRIPTNAME="californiagamessms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

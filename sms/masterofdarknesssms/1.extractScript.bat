@echo off
set T_FILENAME="Master of Darkness (UE) [!].sms"
set SCRIPTNAME="masterofdarknesssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

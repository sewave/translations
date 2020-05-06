@echo off
set T_FILENAME="Missile Defense 3-D (UEB) [!].sms"
set SCRIPTNAME="missiledefense3dsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

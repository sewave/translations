@echo off
set T_FILENAME="Pulse Warrior.tzx"
set SCRIPTNAME="pulsewarriortzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

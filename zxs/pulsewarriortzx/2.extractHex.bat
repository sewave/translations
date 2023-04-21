@echo off
set T_FILENAME="TR_Pulse Warrior.tzx"
set SCRIPTNAME="pulsewarriortzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24DE:30,2356:30,2416:20,95E:50
pause

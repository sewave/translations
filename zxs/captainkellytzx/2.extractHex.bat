@echo off
set T_FILENAME="TR_Captain Kelly.tzx"
set SCRIPTNAME="captainkellytzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B884:300
pause

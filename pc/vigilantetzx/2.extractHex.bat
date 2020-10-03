@echo off
set T_FILENAME="TR_Vigilante (Erbe).tzx"
set SCRIPTNAME="vigilantetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

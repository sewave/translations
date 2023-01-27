@echo off
set T_FILENAME="TR_Venture (1982) (Exidy).col"
set SCRIPTNAME="venturecol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

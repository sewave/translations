@echo off
set T_FILENAME="TR_Omega Race (1981-83) (Midway).col"
set SCRIPTNAME="omegaracecol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

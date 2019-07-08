@echo off
set T_FILENAME="TR_Fantasy Zone (Tengen) [!].nes"
set SCRIPTNAME="fantasyzonenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13C10:70
pause

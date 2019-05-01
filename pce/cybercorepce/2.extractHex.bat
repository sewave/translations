@echo off
set T_FILENAME="TR_Cyber Core (U).pce"
set SCRIPTNAME="cybercorepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

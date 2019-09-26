@echo off
set T_FILENAME="TR_Ninja Spirit (U).pce"
set SCRIPTNAME="ninjaspiritpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

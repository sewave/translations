@echo off
set T_FILENAME="TR_Cross Wiber - Cyber Combat Police (Japan).pce"
set SCRIPTNAME="crosswibercybercombatpolicepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 77900:100,77B00:100,77C80:300
pause

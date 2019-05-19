@echo off
set T_FILENAME="TR_Dead Moon (U).pce"
set SCRIPTNAME="deadmoonpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8E
pause

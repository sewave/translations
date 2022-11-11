@echo off
set T_FILENAME="TR_Omega 1.tzx"
set SCRIPTNAME="omega1tzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EEF:40,1FA7:20
pause

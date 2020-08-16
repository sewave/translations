@echo off
set T_FILENAME="TR_Powerball (USA).md"
set SCRIPTNAME="powerballsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

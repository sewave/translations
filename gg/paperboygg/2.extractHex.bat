@echo off
set T_FILENAME="TR_Paperboy (U).gg"
set SCRIPTNAME="paperboygg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EE00:100
pause

@echo off
set T_FILENAME="TR_Jelly Boy (U).gb"
set SCRIPTNAME="jellyboygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

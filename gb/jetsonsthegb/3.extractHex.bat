@echo off
set T_FILENAME="TR_Jetsons, The (U).gb"
set SCRIPTNAME="jetsonsthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_Game of Harmony, The (U).gb"
set SCRIPTNAME="gameofharmonythegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

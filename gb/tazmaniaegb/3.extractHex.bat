@echo off
set T_FILENAME="TR_Taz-Mania (E) [!].gb"
set SCRIPTNAME="tazmaniaegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

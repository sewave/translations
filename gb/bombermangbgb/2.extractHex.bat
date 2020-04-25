@echo off
set T_FILENAME="TR_Bomberman GB (U) [S][!].gb"
set SCRIPTNAME="bombermangbgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9BEC:10,9F5E:80,9A1A:10
pause

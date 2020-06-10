@echo off
set T_FILENAME="TR_Soccer (E) (M3) [S][!].gb"
set SCRIPTNAME="soccergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

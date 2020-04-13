@echo off
set T_FILENAME="TR_Dead Heat Scramble (U) [!].gb"
set SCRIPTNAME="deadheatscramblegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C4B0:10
pause

@echo off
set T_FILENAME="TR_Blues Brothers, The (U) [!].gb"
set SCRIPTNAME="bluesbrothersthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

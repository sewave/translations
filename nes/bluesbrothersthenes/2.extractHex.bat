@echo off
set T_FILENAME="TR_Blues Brothers, The (U) [!].nes"
set SCRIPTNAME="bluesbrothersthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16D12:80
pause

@echo off
set T_FILENAME="TR_Blues Brothers, The (U) [!].smc"
set SCRIPTNAME="bluesbrothersthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

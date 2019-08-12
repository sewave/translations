@echo off
set T_FILENAME="TR_Plok! (U) [!].smc"
set SCRIPTNAME="ploksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

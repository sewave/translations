@echo off
set T_FILENAME="TR_Super Punch-Out!! (U) [!].smc"
set SCRIPTNAME="superpunchoutsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

@echo off
set T_FILENAME="TR_Knights of the Round (USA).sfc"
set SCRIPTNAME="knightsoftheroundsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

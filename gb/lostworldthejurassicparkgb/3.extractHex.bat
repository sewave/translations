@echo off
set T_FILENAME="TR_Lost World, The - Jurassic Park (U) [S][!].gb"
set SCRIPTNAME="lostworldthejurassicparkgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause

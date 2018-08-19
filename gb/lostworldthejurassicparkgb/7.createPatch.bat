@echo off
set T_FILENAME="TR_Lost World, The - Jurassic Park (U) [S][!].gb"
set S_FILENAME="Lost World, The - Jurassic Park (U) [S][!].gb"
set SCRIPTNAME="lostworldthejurassicparkgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

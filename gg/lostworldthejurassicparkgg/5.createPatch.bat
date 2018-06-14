@echo off
set T_FILENAME="TR_Lost World, The - Jurassic Park (U).gg"
set S_FILENAME="Lost World, The - Jurassic Park (U).gg"
set SCRIPTNAME="lostworldthejurassicparkgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

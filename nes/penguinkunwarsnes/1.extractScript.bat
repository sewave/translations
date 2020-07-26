@echo off
set T_FILENAME="Penguin-kun Wars (Japan).nes"
set SCRIPTNAME="penguinkunwarsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

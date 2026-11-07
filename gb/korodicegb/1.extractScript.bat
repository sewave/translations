@echo off
set T_FILENAME="Koro Dice (Japan).gb"
set SCRIPTNAME="korodicegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

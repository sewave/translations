@echo off
set T_FILENAME="Lethal Weapon (U) [!].gb"
set SCRIPTNAME="lethalweapongb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

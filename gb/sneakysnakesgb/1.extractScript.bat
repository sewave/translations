@echo off
set T_FILENAME="Sneaky Snakes (UE) [!].gb"
set SCRIPTNAME="sneakysnakesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

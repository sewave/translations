@echo off
set T_FILENAME="Worms (U) [!].gb"
set SCRIPTNAME="wormsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

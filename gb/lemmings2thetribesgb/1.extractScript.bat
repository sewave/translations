@echo off
set T_FILENAME="Lemmings 2 - The Tribes (U) [!].gb"
set SCRIPTNAME="lemmings2thetribesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

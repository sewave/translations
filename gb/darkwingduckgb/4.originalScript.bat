@echo off
set T_FILENAME="Darkwing Duck (U) [!].gb"
set SCRIPTNAME="darkwingduckgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

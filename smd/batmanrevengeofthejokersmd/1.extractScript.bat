@echo off
set T_FILENAME="Batman - Revenge of the Joker (U) [!].gen"
set SCRIPTNAME="batmanrevengeofthejokersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

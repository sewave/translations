@echo off
set T_FILENAME="Star Wars (U) [!].gg"
set SCRIPTNAME="starwarsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

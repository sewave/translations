@echo off
set T_FILENAME="Star Wars - The Arcade Game (1984) (Parker Bros).col"
set SCRIPTNAME="starwarsthearcadegamecol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

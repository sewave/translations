@echo off
set T_FILENAME="Space Ace (USA).sfc"
set SCRIPTNAME="spaceacesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

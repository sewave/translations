@echo off
set T_FILENAME="Spot - The Cool Adventure (U).gb"
set SCRIPTNAME="spotthecooladventuregb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

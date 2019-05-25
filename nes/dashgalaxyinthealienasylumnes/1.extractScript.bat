@echo off
set T_FILENAME="Dash Galaxy in the Alien Asylum (U) [!].nes"
set SCRIPTNAME="dashgalaxyinthealienasylumnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

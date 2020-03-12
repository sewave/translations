@echo off
set T_FILENAME="Wizards & Warriors (U) (PRG1) [!].nes"
set SCRIPTNAME="wizardswarriorsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

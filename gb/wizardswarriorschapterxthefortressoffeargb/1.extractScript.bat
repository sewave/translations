@echo off
set T_FILENAME="Wizards & Warriors Chapter X - The Fortress of Fear (E) [!].gb"
set SCRIPTNAME="wizardswarriorschapterxthefortressoffeargb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

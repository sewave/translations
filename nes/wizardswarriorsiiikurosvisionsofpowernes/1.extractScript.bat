@echo off
set T_FILENAME="Wizards & Warriors III - Kuros...Visions of Power (USA).nes"
set SCRIPTNAME="wizardswarriorsiiikurosvisionsofpowernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause

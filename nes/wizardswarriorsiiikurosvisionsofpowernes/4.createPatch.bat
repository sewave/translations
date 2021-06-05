@echo off
set T_FILENAME="TR_Wizards & Warriors III - Kuros...Visions of Power (USA).nes"
set S_FILENAME="Wizards & Warriors III - Kuros...Visions of Power (USA).nes"
set SCRIPTNAME="wizardswarriorsiiikurosvisionsofpowernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

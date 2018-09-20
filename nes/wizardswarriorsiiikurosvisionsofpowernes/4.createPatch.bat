@echo off
set T_FILENAME="TR_Wizards & Warriors III - Kuros - Visions of Power (U) [!].nes"
set S_FILENAME="Wizards & Warriors III - Kuros - Visions of Power (U) [!].nes"
set SCRIPTNAME="wizardswarriorsiiikurosvisionsofpowernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause

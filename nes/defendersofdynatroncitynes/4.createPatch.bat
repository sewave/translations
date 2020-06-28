@echo off
set T_FILENAME="TR_Defenders of Dynatron City (U) [!].nes"
set S_FILENAME="Defenders of Dynatron City (U) [!].nes"
set SCRIPTNAME="defendersofdynatroncitynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

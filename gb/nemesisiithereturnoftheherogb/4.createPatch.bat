@echo off
set T_FILENAME="TR_Nemesis II - The Return of the Hero (E) [!].gb"
set S_FILENAME="Nemesis II - The Return of the Hero (E) [!].gb"
set SCRIPTNAME="nemesisiithereturnoftheherogb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

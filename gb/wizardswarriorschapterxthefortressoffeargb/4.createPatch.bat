@echo off
set T_FILENAME="TR_Wizards & Warriors Chapter X - The Fortress of Fear (E) [!].gb"
set S_FILENAME="Wizards & Warriors Chapter X - The Fortress of Fear (E) [!].gb"
set SCRIPTNAME="wizardswarriorschapterxthefortressoffeargb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

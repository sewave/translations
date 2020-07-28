@echo off
set T_FILENAME="TR_BattleTech - A Game of Armored Combat (USA).md"
set S_FILENAME="BattleTech - A Game of Armored Combat (USA).md"
set SCRIPTNAME="battletechagameofarmoredcombatsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

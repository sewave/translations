@echo off
set T_FILENAME="TR_Dune - The Battle for Arrakis (USA).md"
set S_FILENAME="Dune - The Battle for Arrakis (USA).md"
set SCRIPTNAME="dunethebattleforarrakissmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

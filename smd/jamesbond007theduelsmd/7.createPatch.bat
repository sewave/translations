@echo off
set T_FILENAME="TR_James Bond 007 - The Duel (UE) [!].gen"
set S_FILENAME="James Bond 007 - The Duel (UE) [!].gen"
set SCRIPTNAME="jamesbond007theduelsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_James Bond 007 - The Duel (U) [!].gg"
set S_FILENAME="James Bond 007 - The Duel (U) [!].gg"
set SCRIPTNAME="jamesbond007theduelgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

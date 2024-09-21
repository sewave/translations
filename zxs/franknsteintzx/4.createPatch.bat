@echo off
set T_FILENAME="TR_FrankNStein.tzx"
set S_FILENAME="FrankNStein.tzx"
set SCRIPTNAME="franknsteintzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

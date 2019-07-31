@echo off
set T_FILENAME="TR_Wimbledon Championship Tennis (USA).md"
set S_FILENAME="Wimbledon Championship Tennis (USA).md"
set SCRIPTNAME="wimbledonchampionshiptennissmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

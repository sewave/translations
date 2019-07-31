@echo off
set T_FILENAME="TR_Wimbledon (World).gg"
set S_FILENAME="Wimbledon (World).gg"
set SCRIPTNAME="wimbledongg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

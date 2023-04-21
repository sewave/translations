@echo off
set T_FILENAME="TR_Pulse Warrior.tzx"
set S_FILENAME="Pulse Warrior.tzx"
set SCRIPTNAME="pulsewarriortzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

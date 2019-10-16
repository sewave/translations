@echo off
set T_FILENAME="TR_Heavyweight Champ (E) [!].sms"
set S_FILENAME="Heavyweight Champ (E) [!].sms"
set SCRIPTNAME="heavyweightchampsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

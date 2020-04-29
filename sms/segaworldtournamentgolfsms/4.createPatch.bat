@echo off
set T_FILENAME="TR_Sega World Tournament Golf (EBK) [!].sms"
set S_FILENAME="Sega World Tournament Golf (EBK) [!].sms"
set SCRIPTNAME="segaworldtournamentgolfsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

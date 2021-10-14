@echo off
set T_FILENAME="TR_Druaga no Tou (Japan).rom"
set S_FILENAME="Druaga no Tou (Japan).rom"
set SCRIPTNAME="druaganotourom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

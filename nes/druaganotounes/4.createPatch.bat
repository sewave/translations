@echo off
set T_FILENAME="TR_Druaga no Tou (Japan).nes"
set S_FILENAME="Druaga no Tou (Japan).nes"
set SCRIPTNAME="druaganotounes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

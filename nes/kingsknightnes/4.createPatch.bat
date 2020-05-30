@echo off
set T_FILENAME="TR_King's Knight (U) [!].nes"
set S_FILENAME="King's Knight (U) [!].nes"
set SCRIPTNAME="kingsknightnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

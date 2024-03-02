@echo off
set T_FILENAME="TR_DUET.TZX"
set S_FILENAME="DUET.TZX"
set SCRIPTNAME="duettzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

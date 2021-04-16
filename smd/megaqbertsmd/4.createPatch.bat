@echo off
set T_FILENAME="TR_Mega Qbert.bin"
set S_FILENAME="Mega Qbert.bin"
set SCRIPTNAME="megaqbertsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

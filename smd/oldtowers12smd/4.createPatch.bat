@echo off
set T_FILENAME="TR_ot12.bin"
set S_FILENAME="ot12.bin"
set SCRIPTNAME="oldtowers12smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

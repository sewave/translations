@echo off
set T_FILENAME="TR_aepd.bin"
set S_FILENAME="aepd.bin"
set SCRIPTNAME="aepdsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

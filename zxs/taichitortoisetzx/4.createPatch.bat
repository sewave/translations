@echo off
set T_FILENAME="TR_Tai-Chi Tortoise.tzx"
set S_FILENAME="Tai-Chi Tortoise.tzx"
set SCRIPTNAME="taichitortoisetzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

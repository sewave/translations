@echo off
set T_FILENAME="TR_Skiing (1986) (Telegames).col"
set S_FILENAME="Skiing (1986) (Telegames).col"
set SCRIPTNAME="skiingcol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

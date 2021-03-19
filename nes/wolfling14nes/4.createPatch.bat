@echo off
set T_FILENAME="TR_wolfling14.nes"
set S_FILENAME="wolfling14.nes"
set SCRIPTNAME="wolfling14nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Magic Meanies.tzx"
set S_FILENAME="Magic Meanies.tzx"
set SCRIPTNAME="magicmeaniestzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

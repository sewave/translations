@echo off
set T_FILENAME="TR_Disco Dan.tzx"
set S_FILENAME="Disco Dan.tzx"
set SCRIPTNAME="discodantzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

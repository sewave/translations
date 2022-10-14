@echo off
set T_FILENAME="TR_Ball Crazy.tzx"
set S_FILENAME="Ball Crazy.tzx"
set SCRIPTNAME="ballcrazytzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

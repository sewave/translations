@echo off
set T_FILENAME="TR_Star Farce.tzx"
set S_FILENAME="Star Farce.tzx"
set SCRIPTNAME="starfarcetzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

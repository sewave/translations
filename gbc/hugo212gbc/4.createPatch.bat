@echo off
set T_FILENAME="TR_Hugo 2 1-2 (Germany) (GB Compatible).gbc"
set S_FILENAME="Hugo 2 1-2 (Germany) (GB Compatible).gbc"
set SCRIPTNAME="hugo212gbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Sea Hawk.tzx"
set S_FILENAME="Sea Hawk.tzx"
set SCRIPTNAME="seahawktzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

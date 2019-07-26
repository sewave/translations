@echo off
set T_FILENAME="TR_Shanghai (UE) [!].sms"
set S_FILENAME="Shanghai (UE) [!].sms"
set SCRIPTNAME="shanghaisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

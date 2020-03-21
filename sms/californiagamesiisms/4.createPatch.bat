@echo off
set T_FILENAME="TR_California Games II (E) [!].sms"
set S_FILENAME="California Games II (E) [!].sms"
set SCRIPTNAME="californiagamesiisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

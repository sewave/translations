@echo off
set T_FILENAME="TR_Jang Pung 3 (K) (Unl).sms"
set S_FILENAME="Jang Pung 3 (K) (Unl).sms"
set SCRIPTNAME="jangpung3sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

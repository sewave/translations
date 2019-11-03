@echo off
set T_FILENAME="TR_Zillion (UE) (V1.1) [!].sms"
set S_FILENAME="Zillion (UE) (V1.1) [!].sms"
set SCRIPTNAME="zillionsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

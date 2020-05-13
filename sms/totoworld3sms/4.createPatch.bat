@echo off
set T_FILENAME="TR_Toto World 3 (K) [!].sms"
set S_FILENAME="Toto World 3 (K) [!].sms"
set SCRIPTNAME="totoworld3sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

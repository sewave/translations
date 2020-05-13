@echo off
set T_FILENAME="TR_Zaxxon 3D (UE) [!].sms"
set S_FILENAME="Zaxxon 3D (UE) [!].sms"
set SCRIPTNAME="zaxxon3dsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

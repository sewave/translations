@echo off
set T_FILENAME="TR_3D Starstrike.tzx"
set S_FILENAME="3D Starstrike.tzx"
set SCRIPTNAME="3dstarstriketzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

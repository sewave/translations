@echo off
set T_FILENAME="TR_Mega Man Soccer (USA).sfc"
set S_FILENAME="Mega Man Soccer (USA).sfc"
set SCRIPTNAME="megamansoccersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

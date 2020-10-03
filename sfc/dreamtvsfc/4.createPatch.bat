@echo off
set T_FILENAME="TR_Dream T.V. (USA).sfc"
set S_FILENAME="Dream T.V. (USA).sfc"
set SCRIPTNAME="dreamtvsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

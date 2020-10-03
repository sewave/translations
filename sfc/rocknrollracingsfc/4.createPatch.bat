@echo off
set T_FILENAME="TR_Rock N' Roll Racing (USA).sfc"
set S_FILENAME="Rock N' Roll Racing (USA).sfc"
set SCRIPTNAME="rocknrollracingsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

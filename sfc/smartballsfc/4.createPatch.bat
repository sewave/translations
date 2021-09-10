@echo off
set T_FILENAME="TR_Smart Ball (USA).sfc"
set S_FILENAME="Smart Ball (USA).sfc"
set SCRIPTNAME="smartballsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Rocky Rodent (USA).sfc"
set S_FILENAME="Rocky Rodent (USA).sfc"
set SCRIPTNAME="rockyrodentsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

@echo off
set T_FILENAME="TR_Lion King, The (USA).sfc"
set S_FILENAME="Lion King, The (USA).sfc"
set SCRIPTNAME="lionkingthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

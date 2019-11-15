@echo off
set T_FILENAME="TR_Factory Panic (U) [!].gg"
set S_FILENAME="Factory Panic (U) [!].gg"
set SCRIPTNAME="factorypanicgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

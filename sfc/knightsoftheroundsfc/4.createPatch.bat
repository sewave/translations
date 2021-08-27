@echo off
set T_FILENAME="TR_Knights of the Round (USA).sfc"
set S_FILENAME="Knights of the Round (USA).sfc"
set SCRIPTNAME="knightsoftheroundsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

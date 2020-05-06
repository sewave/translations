@echo off
set T_FILENAME="TR_Xardion (USA).sfc"
set S_FILENAME="Xardion (USA).sfc"
set SCRIPTNAME="xardionsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

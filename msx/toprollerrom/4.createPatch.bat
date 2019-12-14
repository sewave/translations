@echo off
set T_FILENAME="TR_Top Roller (1984) (Jaleco) (J).rom"
set S_FILENAME="Top Roller (1984) (Jaleco) (J).rom"
set SCRIPTNAME="toprollerrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

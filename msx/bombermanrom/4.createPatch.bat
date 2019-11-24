@echo off
set T_FILENAME="TR_Bomber Man (1983) (Hudson) (J).rom"
set S_FILENAME="Bomber Man (1983) (Hudson) (J).rom"
set SCRIPTNAME="bombermanrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

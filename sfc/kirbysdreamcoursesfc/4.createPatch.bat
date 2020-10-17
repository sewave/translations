@echo off
set T_FILENAME="TR_Kirby's Dream Course (USA).sfc"
set S_FILENAME="Kirby's Dream Course (USA).sfc"
set SCRIPTNAME="kirbysdreamcoursesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

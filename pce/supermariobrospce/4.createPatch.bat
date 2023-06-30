@echo off
set T_FILENAME="TR_Super Mario Bros (J) [p1].pce"
set S_FILENAME="Super Mario Bros (J) [p1].pce"
set SCRIPTNAME="supermariobrospce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

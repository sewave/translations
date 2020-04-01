@echo off
set T_FILENAME="TR_Galaxy Force II (W) (REV01) [!].gen"
set S_FILENAME="Galaxy Force II (W) (REV01) [!].gen"
set SCRIPTNAME="galaxyforceiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

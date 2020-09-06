@echo off
set T_FILENAME="TR_In Your Face (USA).gb"
set S_FILENAME="In Your Face (USA).gb"
set SCRIPTNAME="inyourfacegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

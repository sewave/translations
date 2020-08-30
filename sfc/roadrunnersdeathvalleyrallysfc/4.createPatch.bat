@echo off
set T_FILENAME="TR_Road Runner's Death Valley Rally (USA).sfc"
set S_FILENAME="Road Runner's Death Valley Rally (USA).sfc"
set SCRIPTNAME="roadrunnersdeathvalleyrallysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

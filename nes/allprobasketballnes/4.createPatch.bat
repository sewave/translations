@echo off
set T_FILENAME="TR_All-Pro Basketball (USA).nes"
set S_FILENAME="All-Pro Basketball (USA).nes"
set SCRIPTNAME="allprobasketballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

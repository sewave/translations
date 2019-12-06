@echo off
set T_FILENAME="TR_Bomb Jack (U).gb"
set S_FILENAME="Bomb Jack (U).gb"
set SCRIPTNAME="bombjackgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
